<template>
   <MainLayout>
<div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                        <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
                            <div class="bg-gray-200 px-2 py-3 border-solid border-gray-200 border-b">
                           Ajouter un Stagiaire
                            </div>
                            <div class="p-3">
                                <form class="w-full">
                                    <div class="flex flex-wrap -mx-3 mb-2">
                                        <div class="w-full md:w-1/2 px-3 mb-2 md:mb-0">
                                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                                   for="grid-first-name">
                                               Nom
                                            </label>
                                            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                                                   id="grid-first-name" type="text" placeholder="Jane">
                                            
                                        </div>
                                        <div class="w-full md:w-1/2 px-3">
                                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                                   for="grid-last-name">
                                                Prénom
                                            </label>
                                            <input class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                                                   id="grid-last-name" type="text" placeholder="Doe">
                                        </div>
                                    </div>
                                                                        <div class="flex flex-wrap -mx-3 mb-6">
                                        <div class="w-full md:w-1/2 px-3 mb-2 md:mb-0">
                                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                                   for="grid-first-name">
                                               Nom
                                            </label>
                                            <input class="appearance-none block w-full bg-gray-200 text-gray-700 border  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                                                   id="grid-first-name" type="text" placeholder="Jane">
                                            
                                        </div>
                                        <div class="w-full md:w-1/2 px-3">
                                            <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                                   for="grid-last-name">
                                                Prénom
                                            </label>
                                            <input class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                                                   id="grid-last-name" type="text" placeholder="Doe">
                                        </div>
                                    </div>
                                    
                                    <div class="flex flex-wrap -mx-3 mb-2">
                                        <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="grid-city">
                                                City
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="grid-city" type="text" placeholder="Albuquerque">
                                        </div>
                                        <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="grid-state">
                                                State
                                            </label>
                                            <div class="relative">
                                                <select class="block appearance-none w-full bg-grey-200 border border-grey-200 text-grey-darker py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                        id="grid-state">
                                                    <option>New Mexico</option>
                                                    <option>Missouri</option>
                                                    <option>Texas</option>
                                                </select>
                                                <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-grey-darker">
                                                    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg"
                                                         viewBox="0 0 20 20">
                                                        <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/>
                                                    </svg>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                            <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                                   for="grid-zip">
                                                Zip
                                            </label>
                                            <input class="appearance-none block w-full bg-grey-200 text-grey-darker border border-grey-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                                   id="grid-zip" type="text" placeholder="90210">
                                        </div>
                                    </div>
                                       <div class="flex flex-wrap -mx-3 mb-2">
                                        <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
        <button
          class="hover:shadow-form w-full rounded-md bg-[#6A64F1] py-3 px-8 text-center text-base font-semibold text-white outline-none"
        >
        Enregestre
        </button>
        </div>
           <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
        <button
          class="hover:shadow-form w-full rounded-md bg-[#6A64F1] py-3 px-8 text-center text-base font-semibold text-white outline-none"
        >
         Annuler
        </button>
          </div>
      </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--/Grid Form-->
                   </MainLayout>
</template>

<script setup lang="ts" >
import { useUserStore } from '~/stores/user';
const userStore = useUserStore()
import MainLayout from '~/layouts/MainLayout.vue';
const client = useSupabaseClient()
const user = useSupabaseUser()
import { notification } from 'ant-design-vue';


import { ExclamationCircleOutlined } from '@ant-design/icons-vue';
import { ref, createVNode } from 'vue';

import { Modal } from 'ant-design-vue';

let isAccountMenu = ref(false)
let isCartHover = ref(false)
let isSearching = ref(false)
let searchItem = ref('')
let items = ref(null)

const searchByName = useDebounce(async () => {
    isSearching.value = true
    items.value = await useFetch(`/api/prisma/search-by-name/${searchItem.value}`)
    isSearching.value = false
}, 100)
const open = ref<boolean>(false);
onMounted(() => {

    setTimeout(() => userStore.isLoading = false, 200)
})
watch(() => searchItem.value, async () => {
    if (!searchItem.value) { 
        setTimeout(() => {
            items.value = ''
            isSearching.value = false
            return
        }, 500)
    }
    searchByName() 
})
</script>