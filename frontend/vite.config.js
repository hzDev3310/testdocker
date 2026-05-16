import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import path from 'path'
// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  build: {
    // This tells Vite to dump the production build straight into Laravel
    outDir: path.resolve(__dirname, '../backend/public'),
    emptyOutDir: true, // Clears out old React assets before building new ones
  }
})
