// https://nuxt.com/docs/api/configuration/nuxt-config

import Components from 'unplugin-vue-components/vite';
import { AntDesignVueResolver } from 'unplugin-vue-components/resolvers';

export default defineNuxtConfig({
  vite: {
    server: {
      fs: {
          allow: ["/home/user/Monorepo"]
      }
  },
    plugins: [
      Components({
        resolvers: [AntDesignVueResolver()],
      }),
    ],
    ssr: {
      noExternal: ['moment', 'compute-scroll-into-view', 'ant-design-vue'],
    },
  },
    pages: true,
    plugins:['@/plugins/antd'],
    modules: [
        'nuxt-icon',
        'nuxt-lodash',
        '@pinia/nuxt',
        '@pinia-plugin-persistedstate/nuxt',
        '@nuxtjs/tailwindcss',
        '@nuxtjs/supabase'
    ],
    runtimeConfig: {
        public: {
          stripePk: process.env.STRIPE_PK_KEY
        }
    },
    app: {
        head: {
          script: [
            { src: 'https://js.stripe.com/v3/', defer: true }
          ],
        }
      }
})
