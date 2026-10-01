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
  opacity = 'opacity-100',
  showCompassGuides = true,
  isFixed = true,
  variant = 'light', // 'light' | 'crimson' | 'dark'
  patternId,
}) {
  const half = gridSize / 2;
  const isCrimson = variant === 'crimson';
  const effectivePatternId = patternId || (isCrimson ? 'technical-blueprint-grid-crimson' : 'technical-blueprint-grid');

  // Palette tuning based on background tone
  const minorStroke = isCrimson ? '#FFFFFF' : '#64748B';
  const minorOpacity = isCrimson ? 0.08 : 0.15;

  const majorStroke = isCrimson ? '#FFFFFF' : '#475569';
  const majorOpacity = isCrimson ? 0.14 : 0.22;

  const crosshairStroke = isCrimson ? '#FFFFFF' : '#334155';
  const crosshairOpacity = isCrimson ? 0.24 : 0.32;

  const dotFill = isCrimson ? '#FFFFFF' : '#475569';
  const dotOpacity = isCrimson ? 0.18 : 0.18;

  const compassStroke = isCrimson ? '#FFFFFF' : '#64748B';
  const compassOpacity = isCrimson ? 0.08 : 0.12;

  const positionClass = isFixed ? 'fixed' : 'absolute';

  return (
    <div
      className={`${positionClass} inset-0 pointer-events-none z-0 overflow-hidden select-none ${opacity} ${className}`}
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
            id={effectivePatternId}
            width={gridSize}
            height={gridSize}
            patternUnits="userSpaceOnUse"
          >
            {/* Minor Subdividing Dashed Lines (Halfway at 36px) */}
            <line
              x1={half}
              y1="0"
              x2={half}
              y2={gridSize}
              stroke={minorStroke}
              strokeWidth="0.65"
              strokeDasharray="2 3"
              opacity={minorOpacity}
            />
            <line
              x1="0"
              y1={half}
              x2={gridSize}
              y2={half}
              stroke={minorStroke}
              strokeWidth="0.65"
              strokeDasharray="2 3"
              opacity={minorOpacity}
            />

            {/* Major Solid Grid Lines */}
            <line
              x1="0"
              y1="0"
              x2={gridSize}
              y2="0"
              stroke={majorStroke}
              strokeWidth="0.75"
              opacity={majorOpacity}
            />
            <line
              x1="0"
              y1="0"
              x2="0"
              y2={gridSize}
              stroke={majorStroke}
              strokeWidth="0.75"
              opacity={majorOpacity}
            />

            {/* Major Intersection Crosshairs (+) — Technical precision */}
            <path
              d={`M -4 0 L 4 0 M 0 -4 L 0 4`}
              stroke={crosshairStroke}
              strokeWidth="0.85"
              opacity={crosshairOpacity}
            />

            {/* Subtle Center Intersection Dot */}
            <circle
              cx={half}
              cy={half}
              r="0.8"
              fill={dotFill}
              opacity={dotOpacity}
            />
          </pattern>
        </defs>

        {/* The Repeating Grid Layer (Consistent across entire viewport) */}
        <rect
          width="100%"
          height="100%"
          fill={`url(#${effectivePatternId})`}
        />

        {/* Ambient Technical Drafting Guides — Subtle drafting compass arcs */}
        {showCompassGuides && (
          <g stroke={compassStroke} fill="none" opacity={compassOpacity}>
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
              cy="65%"
              r="340"
              strokeWidth="0.75"
              strokeDasharray="3 5"
            />
            <circle
              cx="10%"
              cy="65%"
              r="220"
              strokeWidth="0.6"
            />
          </g>
        )}
      </svg>
    </div>
  );
}
