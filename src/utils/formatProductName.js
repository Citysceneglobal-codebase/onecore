import React from 'react';

/**
 * Formats a product brand name by appending a styled smaller trademark symbol (™)
 * positioned as a subtle superscript mark at the upper-right of the product name.
 *
 * @param {string} name - Product name to format
 * @returns {React.ReactNode} React element containing the product name and smaller superscript ™
 */
export function formatProductName(name) {
  if (!name || typeof name !== 'string') return name || '';
  const trimmed = name.trim();
  // Strip trailing trademark marks if already present to prevent duplicate symbols
  const baseName = trimmed.replace(/(?:™|&trade;|&#8482;|\s*™)$/i, '').trim();

  return React.createElement(
    React.Fragment,
    null,
    baseName,
    React.createElement(
      'span',
      {
        className: 'product-trademark text-[0.62em] font-normal align-super leading-none inline-block ml-[0.08em] select-none',
        style: {
          fontSize: '0.62em',
          verticalAlign: 'super',
          lineHeight: 1,
          marginLeft: '0.08em',
          display: 'inline-block',
          fontWeight: 'normal',
        },
      },
      '™'
    )
  );
}

/**
 * Formats a product brand name as plain text (e.g. for HTML attributes or document title).
 *
 * @param {string} name - Product name to format
 * @returns {string} Product name with ™ as text
 */
export function formatProductNameText(name) {
  if (!name || typeof name !== 'string') return name || '';
  const trimmed = name.trim();
  const baseName = trimmed.replace(/(?:™|&trade;|&#8482;|\s*™)$/i, '').trim();
  return `${baseName}™`;
}

export default formatProductName;
