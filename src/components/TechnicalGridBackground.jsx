import React from 'react';

/**
 * TechnicalGridBackground
 * 
 * Recreates the precision architectural cutting-mat / technical drafting grid
 * from the client reference:
 * - Solid major grid squares (72px x 72px)
 * - Midway dashed subdivision grid lines (36px)
 * - Precision intersection crosshair '+' tick marks
 * - Subtle technical drafting compass guide circles & arcs
 * - Pure SVG vector rendering: razor-sharp on Retina/4K displays, zero lag, zero asset load
 */
export default function TechnicalGridBackground({ 
  className = '', 
  gridSize = 72,
  opacity = 'opacity-100',
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
        className="absolute inset-0 w-full h-full text-slate-900"
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
            {/* Minor Subdividing Dashed Lines (Halfway at 36px) */}
            <line
              x1={half}
              y1="0"
              x2={half}
              y2={gridSize}
              stroke="currentColor"
              strokeWidth="0.8"
              strokeDasharray="2 3"
              className="text-slate-500/18"
            />
            <line
              x1="0"
              y1={half}
              x2={gridSize}
              y2={half}
              stroke="currentColor"
              strokeWidth="0.8"
              strokeDasharray="2 3"
              className="text-slate-500/18"
            />

            {/* Major Solid Grid Lines */}
            <line
              x1="0"
              y1="0"
              x2={gridSize}
              y2="0"
              stroke="currentColor"
              strokeWidth="1"
              className="text-slate-600/30"
            />
            <line
              x1="0"
              y1="0"
              x2="0"
              y2={gridSize}
              stroke="currentColor"
              strokeWidth="1"
              className="text-slate-600/30"
            />

            {/* Major Intersection Crosshairs (+) */}
            <path
              d={`M -5 0 L 5 0 M 0 -5 L 0 5`}
              stroke="currentColor"
              strokeWidth="1.25"
              className="text-slate-800/45"
            />

            {/* Subtle Center Intersection Dot */}
            <circle
              cx={half}
              cy={half}
              r="1"
              fill="currentColor"
              className="text-slate-700/25"
            />
          </pattern>

          {/* Radial mask for gentle depth and smooth edges */}
          <radialGradient id="grid-vignette" cx="50%" cy="30%" r="80%">
            <stop offset="0%" stopColor="#FFFFFF" stopOpacity="0.95" />
            <stop offset="60%" stopColor="#FFFFFF" stopOpacity="0.85" />
            <stop offset="100%" stopColor="#FFFFFF" stopOpacity="0.65" />
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

        {/* Ambient Technical Drafting Circles (Compass Arcs matching the reference image) */}
        {showCompassGuides && (
          <g className="text-slate-600/20" stroke="currentColor" fill="none">
            {/* Top Right Drafting Arc System */}
            <circle
              cx="85%"
              cy="250"
              r="280"
              strokeWidth="1"
              strokeDasharray="4 6"
            />
            <circle
              cx="85%"
              cy="250"
              r="180"
              strokeWidth="0.8"
            />
            <circle
              cx="85%"
              cy="250"
              r="400"
              strokeWidth="0.6"
              strokeDasharray="6 8"
            />
            {/* Subtle Angle Calibrator Line */}
            <line
              x1="85%"
              y1="50"
              x2="85%"
              y2="450"
              strokeWidth="0.8"
              strokeDasharray="2 4"
            />

            {/* Left Ambient Arc */}
            <circle
              cx="10%"
              cy="75%"
              r="340"
              strokeWidth="1"
              strokeDasharray="3 5"
            />
            <circle
              cx="10%"
              cy="75%"
              r="220"
              strokeWidth="0.8"
            />
            <line
              x1="10%"
              y1="60%"
              x2="10%"
              y2="90%"
              strokeWidth="0.8"
              strokeDasharray="2 4"
            />
          </g>
        )}
      </svg>
    </div>
  );
}
