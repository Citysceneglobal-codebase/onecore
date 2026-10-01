import React from 'react';

/**
 * TechnicalGridBackground
 * 
 * Recreates the precision architectural cutting-mat / technical drafting grid
 * with a soft, muted, and subtle aesthetic:
 * - Solid major grid squares (72px x 72px) with delicate opacity
 * - Midway dashed subdivision grid lines (36px) with soft, dull tone
 * - Refined intersection crosshairs (+) and subtle center points
 * - Faint ambient drafting compass arcs
 * - Ambient frosted wash layer so it feels calm, soft, and slightly blurred even in open spaces
 */
export default function TechnicalGridBackground({ 
  className = '', 
  gridSize = 72,
  opacity = 'opacity-85',
  showCompassGuides = true 
}) {
  const half = gridSize / 2;

  return (
    <div
      className={`fixed inset-0 pointer-events-none z-0 overflow-hidden select-none ${opacity} ${className}`}
      aria-hidden="true"
    >
      {/* Background SVG Grid Canvas */}
      <svg
        className="absolute inset-0 w-full h-full"
        xmlns="http://www.w3.org/2000/svg"
        width="100%"
        height="100%"
      >
        <defs>
          {/* Main Blueprint / Cutting Mat Pattern Tile */}
          <pattern
            id="technical-blueprint-grid"
            width={gridSize}
            height={gridSize}
            patternUnits="userSpaceOnUse"
          >
            {/* Minor Subdividing Dashed Lines (Halfway at 36px) — Soft, dull & quiet */}
            <line
              x1={half}
              y1="0"
              x2={half}
              y2={gridSize}
              stroke="#64748B"
              strokeWidth="0.65"
              strokeDasharray="2 3"
              opacity="0.08"
            />
            <line
              x1="0"
              y1={half}
              x2={gridSize}
              y2={half}
              stroke="#64748B"
              strokeWidth="0.65"
              strokeDasharray="2 3"
              opacity="0.08"
            />

            {/* Major Solid Grid Lines — Muted & Subtle */}
            <line
              x1="0"
              y1="0"
              x2={gridSize}
              y2="0"
              stroke="#475569"
              strokeWidth="0.75"
              opacity="0.13"
            />
            <line
              x1="0"
              y1="0"
              x2="0"
              y2={gridSize}
              stroke="#475569"
              strokeWidth="0.75"
              opacity="0.13"
            />

            {/* Major Intersection Crosshairs (+) — Refined & Non-flashy */}
            <path
              d={`M -3.5 0 L 3.5 0 M 0 -3.5 L 0 3.5`}
              stroke="#334155"
              strokeWidth="0.8"
              opacity="0.22"
            />

            {/* Subtle Center Intersection Dot */}
            <circle
              cx={half}
              cy={half}
              r="0.75"
              fill="#475569"
              opacity="0.10"
            />
          </pattern>

          {/* Radial mask for gentle depth and smooth edges */}
          <radialGradient id="grid-vignette" cx="50%" cy="30%" r="75%">
            <stop offset="0%" stopColor="#FFFFFF" stopOpacity="0.85" />
            <stop offset="60%" stopColor="#FFFFFF" stopOpacity="0.65" />
            <stop offset="100%" stopColor="#FFFFFF" stopOpacity="0.40" />
          </radialGradient>
          
          <mask id="grid-mask">
            <rect width="100%" height="100%" fill="url(#grid-vignette)" />
          </mask>
        </defs>

        {/* The Repeating Grid Layer */}
        <rect
          width="100%"
          height="100%"
          fill="url(#technical-blueprint-grid)"
          mask="url(#grid-mask)"
        />

        {/* Ambient Technical Drafting Circles — Very faint & subtle */}
        {showCompassGuides && (
          <g stroke="#475569" fill="none" opacity="0.08">
            {/* Top Right Drafting Arc System */}
            <circle
              cx="85%"
              cy="250"
              r="280"
              strokeWidth="0.75"
              strokeDasharray="4 6"
            />
            <circle
              cx="85%"
              cy="250"
              r="180"
              strokeWidth="0.6"
            />
            <circle
              cx="85%"
              cy="250"
              r="400"
              strokeWidth="0.5"
              strokeDasharray="6 8"
            />
            <line
              x1="85%"
              y1="50"
              x2="85%"
              y2="450"
              strokeWidth="0.6"
              strokeDasharray="2 4"
            />

            {/* Left Ambient Arc */}
            <circle
              cx="10%"
              cy="75%"
              r="340"
              strokeWidth="0.75"
              strokeDasharray="3 5"
            />
            <circle
              cx="10%"
              cy="75%"
              r="220"
              strokeWidth="0.6"
            />
          </g>
        )}
      </svg>

      {/* Gentle Frosted Diffusion Wash: gives the grid that soft, calm, slightly blurry elegance even in empty spaces */}
      <div className="absolute inset-0 bg-[#FAF9F6]/30 backdrop-blur-[0.5px]" />
    </div>
  );
}
