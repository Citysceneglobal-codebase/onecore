import React, { useEffect, useRef, useState } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { assetUrl } from '../utils/assetUrl';

const steps = [
  {
    image: '/assets/healthcare-professionals.jpg',
    num: '01',
    label: 'Clinical Dialogue',
    title: 'Partnering with Healthcare Professionals',
    body: 'Engaging in continuous clinical dialogue with doctors, consultants, and specialists across India to address real treatment challenges.',
  },
  {
    image: '/assets/internet/lab-chemistry.jpg',
    num: '02',
    label: 'Formulation Science',
    title: 'Precision Formulation Science',
    body: 'Disciplined chemical evaluation and pharmaceutical research targeting optimal bioavailability, dosage precision, and stability.',
  },
  {
    image: '/assets/quality.jpg',
    num: '03',
    label: 'Quality Manufacturing',
    title: 'Disciplined Quality from Start to Finish',
    body: 'Every batch undergoes meticulous multi-stage quality review and validation in qualified environments before reaching market release.',
  },
  {
    image: '/assets/therapeutic-womens-health.jpg',
    num: '04',
    label: 'Women & Paediatric Care',
    title: 'Care Tailored to Sensitive Needs',
    body: 'Formulations purposefully developed for gynaecological wellness, hormonal balance, and gentle paediatric therapeutic requirements.',
  },
  {
    image: '/assets/therapeutic-orthopaedics.jpg',
    num: '05',
    label: 'Patient Recovery',
    title: 'Restoring Strength & Everyday Vitality',
    body: 'Targeted orthopaedic and general therapeutics designed to support joint health, mobility, and long-term patient wellbeing.',
  },
];

/*
 * The five circles live on a very large circular track.
 *
 * They are intentionally NOT arranged vertically.
 *
 * At the middle of the animation the geometry looks approximately like:
 *
 *                    01
 *                      \
 *                       \
 *                        02
 *                         \
 *                          ●  ACTIVE
 *                         /
 *                        /
 *                      04
 *                    05
 *
 * The actual track centre is outside the visible panel.
 */

const CIRCLE_ANGLES = [-40, -20, 0, 20, 40];

export default function EnlargedSymbolExperience() {
  const sectionRef = useRef(null);
  const panelRef = useRef(null);

  const [progress, setProgress] = useState(0);
  const [active, setActive] = useState(0);

  const [geometry, setGeometry] = useState({
    width: 700,
    height: 900,
  });

  /*
   * ------------------------------------------------------------
   * Measure the actual left panel.
   * ------------------------------------------------------------
   */

  useEffect(() => {
    const panel = panelRef.current;

    if (!panel) return;

    const updateSize = () => {
      const rect = panel.getBoundingClientRect();

      setGeometry({
        width: rect.width,
        height: rect.height,
      });
    };

    updateSize();

    const observer = new ResizeObserver(updateSize);
    observer.observe(panel);

    window.addEventListener('resize', updateSize);

    return () => {
      observer.disconnect();
      window.removeEventListener('resize', updateSize);
    };
  }, []);

  /*
   * ------------------------------------------------------------
   * Convert page scrolling into section progress.
   * ------------------------------------------------------------
   */

  useEffect(() => {
    let ticking = false;

    const updateScroll = () => {
      const section = sectionRef.current;

      if (!section) {
        ticking = false;
        return;
      }

      const rect = section.getBoundingClientRect();

      const scrollableDistance =
        section.offsetHeight - window.innerHeight;

      if (scrollableDistance <= 0) {
        ticking = false;
        return;
      }

      const scrolled = Math.max(
        0,
        Math.min(
          scrollableDistance,
          -rect.top
        )
      );

      const nextProgress =
        scrolled / scrollableDistance;

      /*
       * There are 4 transitions:
       *
       * 0 → 1
       * 1 → 2
       * 2 → 3
       * 3 → 4
       */

      const nextActive = Math.round(
        nextProgress * (steps.length - 1)
      );

      setProgress(nextProgress);
      setActive(nextActive);

      ticking = false;
    };

    const onScroll = () => {
      if (ticking) return;

      ticking = true;

      window.requestAnimationFrame(
        updateScroll
      );
    };

    window.addEventListener(
      'scroll',
      onScroll,
      { passive: true }
    );

    window.addEventListener(
      'resize',
      onScroll
    );

    updateScroll();

    return () => {
      window.removeEventListener(
        'scroll',
        onScroll
      );

      window.removeEventListener(
        'resize',
        onScroll
      );
    };
  }, []);

  /*
   * ------------------------------------------------------------
   * LARGE OFF-SCREEN CIRCLE GEOMETRY
   * ------------------------------------------------------------
   *
   * The track centre deliberately sits outside the left panel.
   *
   * Example:
   *
   *     ┌─────────────────────┐
   *     │                     │
   *     │       01            │
   *     │        ╲            │
   *     │         ●           │
   *     │        ╱            │
   *     │       03            │
   *     │                     │
   *     └─────────────────────┘
   *
   *             ↑
   *       track centre
   *       is far outside
   *
   * This is the important part of the reference.
   */

  const panelWidth = geometry.width;
  const panelHeight = geometry.height;

  /*
   * Circle diameter.
   *
   * The circle is intentionally large enough to dominate
   * the left side of the screen.
   */

  const circleSize = Math.min(
    panelHeight * 0.78,
    panelWidth * 0.95
  );

  /*
   * Large orbit radius.
   *
   * This is considerably larger than the visible panel.
   * Therefore we only see part of the circular system.
   */

  const orbitRadius =
    panelWidth * 1.2;

  /*
   * Move the centre outside the visible panel.
   *
   * For a 50% width left panel:
   *
   * panel width = 50vw
   *
   * centre ≈ -45vw
   *
   * so the right-most point of the huge circle
   * appears inside the viewport.
   */

  const trackCenterX =
    panelWidth * -0.9;

  const trackCenterY =
    panelHeight * 0.5;

  /*
   * ------------------------------------------------------------
   * ROTATION
   * ------------------------------------------------------------
   *
   * We don't rotate the individual circles independently.
   *
   * We rotate the ENTIRE large circular track.
   *
   * At progress 0:
   *     circle 01 is at the active position.
   *
   * At progress 0.5:
   *     circle 03 is at the active position.
   *
   * At progress 1:
   *     circle 05 is at the active position.
   *
   * The active point itself never moves.
   */

  const totalRotation =
    40 + progress * -80;

  /*
   * The fixed diagonal indicator.
   *
   * It is deliberately OUTSIDE the rotating track.
   */

  const stickLength =
    panelHeight * 0.82;

  return (
    <section
      ref={sectionRef}
      className="relative w-full"
      style={{
        height: `${steps.length * 100}vh`,
        background: '#0c0c0e',
      }}
    >
      {/* =====================================================
          STICKY VIEWPORT
      ====================================================== */}

      <div
        className="sticky top-0 h-screen w-full overflow-hidden"
        style={{
          background: '#0c0c0e',
        }}
      >
        <div
          className="relative h-full w-full"
        >

          {/* =================================================
              LEFT SIDE
          ================================================== */}

          <div
            ref={panelRef}
            className="absolute left-0 top-0 h-full w-1/2 overflow-hidden"
          >

            {/* =================================================
                HUGE CIRCULAR TRACK
            ================================================== */}

            <div
              className="absolute"
              style={{
                left: 0,
                top: 0,

                width: 0,
                height: 0,

                /*
                 * Rotate the entire circular system around
                 * its invisible centre.
                 */

                transform: `
                  translate(
                    ${trackCenterX}px,
                    ${trackCenterY}px
                  )
                  rotate(${totalRotation}deg)
                `,

                transformOrigin: '0 0',

                transition:
                  'transform 0.08s linear',

                zIndex: 10,
              }}
            >

              {/* =================================================
                  IMAGE CIRCLES
              ================================================== */}

              {steps.map((step, index) => {
                const angle =
                  CIRCLE_ANGLES[index];

                const radians =
                  (angle * Math.PI) / 180;

                const x =
                  Math.cos(radians) *
                  orbitRadius;

                const y =
                  Math.sin(radians) *
                  orbitRadius;

                const isActive =
                  index === active;

                /*
                 * Make the active circle slightly larger.
                 *
                 * This is subtle; the geometry remains consistent.
                 */

                const currentSize =
                  isActive
                    ? circleSize * 1.03
                    : circleSize;

                return (
                  <div
                    key={step.num}
                    style={{
                      position: 'absolute',

                      left: 0,
                      top: 0,

                      width: currentSize,
                      height: currentSize,

                      borderRadius: '50%',

                      overflow: 'hidden',

                      /*
                       * Position this circle on the giant
                       * invisible circular track.
                       */

                      transform: `
                        translate(-50%, -50%)
                        translate(
                          ${x}px,
                          ${y}px
                        )
                      `,

                      zIndex: isActive
                        ? 30
                        : 10 + index,

                      transition:
                        'width 0.5s ease, height 0.5s ease, box-shadow 0.5s ease',

                      boxShadow:
                        isActive
                          ? `
                            0 0 0 2px
                            rgba(213,43,30,0.75),
                            0 20px 70px
                            rgba(0,0,0,0.45)
                          `
                          : `
                            0 0 0 1px
                            rgba(255,255,255,0.08)
                          `,
                    }}
                  >

                    {/* IMAGE */}

                    <img
                      src={assetUrl(step.image)}
                      alt={step.label}
                      draggable="false"
                      style={{
                        width: '100%',
                        height: '100%',

                        objectFit: 'cover',

                        /*
                         * The wheel rotates underneath.
                         *
                         * Counter-rotate the image so that
                         * photographs remain visually upright.
                         */

                        transform: `
                          rotate(${-totalRotation}deg)
                        `,

                        filter: isActive
                          ? 'none'
                          : 'grayscale(100%) brightness(0.22)',

                        transition:
                          'filter 0.55s ease',

                        userSelect: 'none',

                        pointerEvents: 'none',
                      }}
                    />

                    {/* DARK OVERLAY FOR INACTIVE ITEMS */}

                    {!isActive && (
                      <div
                        style={{
                          position: 'absolute',
                          inset: 0,

                          background:
                            'rgba(0,0,0,0.32)',

                          pointerEvents:
                            'none',
                        }}
                      />
                    )}

                  </div>
                );
              })}
            </div>

            {/* =================================================
                FIXED DIAGONAL STICK
            ================================================== */}

            <div
              className="absolute pointer-events-none"
              style={{
                left: '31%',
                top: '50%',

                width: 3,
                height: stickLength,

                background:
                  '#D52B1E',

                borderRadius: 999,

                /*
                 * THIS DOES NOT MOVE WITH THE CIRCLE TRACK.
                 *
                 * rotate(-45deg) produces:
                 *
                 *       /
                 *      /
                 *     /
                 *    /
                 */

                transform:
                  'translate(-50%, -50%) rotate(-45deg)',

                transformOrigin:
                  'center center',

                zIndex: 100,

                boxShadow:
                  '0 0 18px rgba(213,43,30,0.12)',
              }}
            />

            {/* =================================================
                SMALL ACTIVE MARKER
            ================================================== */}

            <div
              className="absolute pointer-events-none"
              style={{
                left: '31%',
                top: '50%',

                width: 12,
                height: 12,

                borderRadius: '50%',

                background:
                  '#D52B1E',

                border:
                  '3px solid #0c0c0e',

                boxShadow:
                  '0 0 0 2px rgba(213,43,30,0.35)',

                transform:
                  'translate(-50%, -50%)',

                zIndex: 110,
              }}
            />

          </div>

          {/* =================================================
              RIGHT CONTENT PANEL
          ================================================== */}

          <div
            className="absolute right-0 top-0 h-full w-1/2"
            style={{
              borderLeft:
                '1px solid rgba(255,255,255,0.07)',
            }}
          >

            <div
              className="flex h-full w-full items-center"
              style={{
                padding:
                  '0 clamp(32px, 6vw, 100px)',
              }}
            >

              <div
                className="w-full"
                style={{
                  maxWidth: 620,
                }}
              >

                {/* =================================================
                    PROGRESS
                ================================================== */}

                <div
                  className="mb-10 flex items-center gap-2"
                >
                  {steps.map(
                    (step, index) => (
                      <div
                        key={step.num}
                        style={{
                          height: 4,

                          width:
                            active === index
                              ? 34
                              : 7,

                          borderRadius:
                            9999,

                          background:
                            '#D52B1E',

                          opacity:
                            active === index
                              ? 1
                              : 0.2,

                          transition:
                            'width 0.35s ease, opacity 0.35s ease',
                        }}
                      />
                    )
                  )}
                </div>

                {/* =================================================
                    TEXT
                ================================================== */}

                <div
                  style={{
                    minHeight: 310,
                  }}
                >
                  <AnimatePresence
                    mode="wait"
                  >
                    <motion.div
                      key={active}
                      initial={{
                        opacity: 0,
                        y: 18,
                      }}
                      animate={{
                        opacity: 1,
                        y: 0,
                      }}
                      exit={{
                        opacity: 0,
                        y: -18,
                      }}
                      transition={{
                        duration: 0.4,
                        ease: 'easeOut',
                      }}
                      style={{
                        display: 'flex',
                        flexDirection:
                          'column',

                        gap: 20,
                      }}
                    >

                      {/* NUMBER / LABEL */}

                      <span
                        style={{
                          fontFamily:
                            'monospace',

                          fontSize: 11,

                          letterSpacing:
                            '0.22em',

                          textTransform:
                            'uppercase',

                          color:
                            '#D52B1E',
                        }}
                      >
                        {steps[active].num}
                        {' — '}
                        {steps[active].label}
                      </span>

                      {/* TITLE */}

                      <h2
                        style={{
                          margin: 0,

                          fontFamily:
                            'Georgia, serif',

                          fontSize:
                            'clamp(32px, 4vw, 56px)',

                          lineHeight: 1.08,

                          letterSpacing:
                            '-0.025em',

                          color:
                            '#ffffff',

                          maxWidth: 600,
                        }}
                      >
                        {steps[active].title}
                      </h2>

                      {/* DESCRIPTION */}

                      <p
                        style={{
                          margin: 0,

                          maxWidth: 470,

                          fontSize:
                            'clamp(13px, 1.15vw, 16px)',

                          lineHeight: 1.75,

                          color:
                            'rgba(255,255,255,0.52)',
                        }}
                      >
                        {steps[active].body}
                      </p>

                    </motion.div>
                  </AnimatePresence>
                </div>

              </div>

            </div>
          </div>

        </div>
      </div>
    </section>
  );
}