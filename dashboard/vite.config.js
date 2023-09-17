import { fileURLToPath, URL } from 'node:url'
import vue from '@vitejs/plugin-vue'
import { defineConfig } from 'vite'
import analyzer from 'rollup-plugin-analyzer'

export default defineConfig({
  server: {
    cors: false,
    proxy: {
      '/api': {
        target: 'https://api.oklabflensburg.de',
        rewrite: (path) => path.replace(/^\/api/, ''),
        changeOrigin: true,
        secure: false,
      },
    },
  },
  resolve: {
    alias: {
      src: fileURLToPath(new URL('src', import.meta.url)),
    },
  },
  plugins: [
    vue(),
    analyzer({ summaryOnly: true }),
  ],
  test: {
    environment: 'happy-dom',
    globals: true,
    snapshotFormat: {
      escapeString: false,
    },
    coverage: {
      enabled: true,
      provider: 'v8',
      include: [
        'src',
      ],
      exclude: [
        'src/*.{js,vue}',
      ],
      all: true,
    },
  },
})
