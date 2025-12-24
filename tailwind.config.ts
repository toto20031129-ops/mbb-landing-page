import type { Config } from 'tailwindcss'

const config: Config = {
  content: [
    './src/pages/**/*.{js,ts,jsx,tsx,mdx}',
    './src/components/**/*.{js,ts,jsx,tsx,mdx}',
    './src/app/**/*.{js,ts,jsx,tsx,mdx}',
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Pretendard', 'Nanum Barun Gothic', 'sans-serif'],
      },
      colors: {
        primary: '#0066FF', // Example primary blue from the button
      },
    },
  },
  plugins: [],
}
export default config

