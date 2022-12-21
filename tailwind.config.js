/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './src/**/*.{html,md,liquid,erb,serb,rb}',
    './frontend/javascript/**/*.js',
  ],
  theme: {
    extend: {
      keyframes: {
        translate: {
          '0%': { left: '-55vw' },
          '100%': { left: '150vw' }
        }
      },
      animation: {
      'spin-slow': 'spin 30s linear infinite',
      'move-right': 'translate 10s linear 1',
    }
  },
  },
  plugins: [],
}
