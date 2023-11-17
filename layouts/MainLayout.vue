<template>
<div class="mx-auto bg-grey-lightest">
    <!--Screen-->
    <div class="min-h-screen flex flex-col">
        <!--Header Section Starts Here-->
        <header class="bg-nav">
                <div             id="TopMenu"            class="w-full bg-[#FAFAFA] border-b md:block hidden"        >
                    <ul 
                        class="
                            flex 
                            items-center 
                            justify-end
                            text-xs 
                            text-[#333333]
                            font-light 
                            px-2 
                            h-10
                            bg-[#FAFAFA] 
                            max-w-[1200px] 
                        "
                    >
                        <li class="border-r border-r-gray-400 px-3 hover:text-[#FF4646] cursor-pointer">
                        
                            <NuxtLink 
                                            to="/stagiaire/add"
                                        >
                                            stagaire
                                        </NuxtLink>
                        </li>
                        <li class="border-r border-r-gray-400 px-3 hover:text-[#FF4646] cursor-pointer">
                        
                        <NuxtLink 
                                        to="/admin"
                                    >
                                    admin
                                    </NuxtLink>
                    </li>
                    <li class="border-r border-r-gray-400 px-3 hover:text-[#FF4646] cursor-pointer">
                    <NuxtLink 
                                        to="/table"
                                    
                                    >
                                    table
                                    </NuxtLink>
                    
                            
                        </li>
                        <li class="border-r border-r-gray-400 px-3 hover:text-[#FF4646] cursor-pointer">
                            Buyer Protection
                        </li>
                        <li class="px-3 hover:text-[#FF4646] cursor-pointer">
                            <Icon name="ic:sharp-install-mobile" size="17"/>
                            App
                        </li>
                        <li 
                            @mouseenter="isAccountMenu = true"
                            @mouseleave="isAccountMenu = false"
                            class="relative flex items-center px-2.5 hover:text-[#FF4646] h-full cursor-pointer"
                            :class="isAccountMenu ? 'bg-white border z-40 shadow-[0_15px_100px_40px_rgba(0,0,0,0.3)]' : 'border border-[#FAFAFA]'"
                        >
                            <Icon name="ph:user-thin" size="17"/>
                            Account
                            <Icon name="mdi:chevron-down" size="15" class="ml-5"/>

                            <div 
                                id="AccountMenu" 
                                v-if="isAccountMenu"
                                class="absolute bg-white w-[220px] text-[#333333] z-40 top-[38px] -left-[100px] border-x border-b"
                            >
                                <div v-if="!user">
                                    <div class="text-semibold text-[15px] my-4 px-3">Welcome to AliExpress!</div>
                                    <div class="flex items-center gap-1 px-3 mb-3">
                                        <NuxtLink 
                                            to="/auth"
                                            class="bg-[#FF4646] text-center w-full text-[16px] rounded-sm text-white font-semibold p-2"
                                        >
                                            Login / Register
                                        </NuxtLink>
                                    </div>
                                </div>
                                <div class="border-b"/>
                                <ul class="bg-white ">
                                    <li 
                                        @click="navigateTo('/orders')"
                                        class="text-[13px] py-2 px-4 w-full hover:bg-gray-200"
                                    >
                                    My Orders
                                    </li>
                                    <li 
                                        v-if="user" 
                                        @click="client.auth.signOut()"
                                        class="text-[13px] py-2 px-4 w-full hover:bg-gray-200"
                                    >
                                        Sign out
                                    </li>
                                </ul>
                                
                            </div>
                        </li>
                    </ul>
                </div>
           </header>
        <!--/Header-->
      <div class="flex flex-1">
            <!--Sidebar-->
            <aside id="sidebar" p-3 class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block">
                <div class="flex">

                </div>
                <ul class="list-reset flex flex-col">
                    <li class=" w-full h-full py-3 px-2 border-b border-light-border ">
                        <a href="index.html"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            <i class="fas fa-tachometer-alt float-left mx-2"></i>
                            Dashboard
                            <span><i class="fas fa-angle-right float-right"></i></span>
                        </a>
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-light-border bg-white">
                        <a href="forms.html"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            <i class="fab fa-wpforms float-left mx-2"></i>
                            Forms
                            <span><i class="fa fa-angle-right float-right"></i></span>
                        </a>
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="buttons.html"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            <i class="fas fa-grip-horizontal float-left mx-2"></i>
                            Buttons
                            <span><i class="fa fa-angle-right float-right"></i></span>
                        </a>
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-light-border">
                      <NuxtLink 
                                    to="/stagiaire/add"
                                        class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                    
                                
                                     <span><i class="fa fa-angle-right float-right"></i></span>
                                    ADD
                                </NuxtLink>
                      
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-light-border">
                        <a href="ui.html"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            <i class="fab fa-uikit float-left mx-2"></i>
                            Ui components
                            <span><i class="fa fa-angle-right float-right"></i></span>
                        </a>
                    </li>
                    <li class="w-full h-full py-3 px-2 border-b border-300-border">
                        <a href="modals.html" class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            <i class="fas fa-square-full float-left mx-2"></i>
                            Modals
                            <span><i class="fa fa-angle-right float-right"></i></span>
                        </a>
                    </li>
                    <li class="w-full h-full py-3 px-2">
                        <a href="#"
                           class="font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                            <i class="far fa-file float-left mx-2"></i>
                            Pages
                            <span><i class="fa fa-angle-down float-right"></i></span>
                        </a>
                        <ul class="list-reset -mx-2 bg-white-medium-dark">
                            <li class="border-t mt-2 border-light-border w-full h-full px-2 py-3">
                                <a href="login.html"
                                   class="mx-4 font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                                    Login Page
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="border-t border-light-border w-full h-full px-2 py-3">
                                <a href="register.html"
                                   class="mx-4 font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                                    Register Page
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                            <li class="border-t border-light-border w-full h-full px-2 py-3">
                                <a href="404.html"
                                   class="mx-4 font-sans font-hairline hover:font-normal text-sm text-nav-item no-underline">
                                    404 Page
                                    <span><i class="fa fa-angle-right float-right"></i></span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </aside>
            <!--/Sidebar-->
            <!--Main-->
    <Loading v-if="userStore.isLoading" />

    <main class="bg-white-500 flex-1 p-3 overflow-hidden">
    <slot />
    </main>
            <!--/Main-->
</div>
    <Footer v-if="!userStore.isLoading"/>
     </div>
   </div>
</template>

<script setup>
import { useUserStore } from '~/stores/user';
const userStore = useUserStore()

const client = useSupabaseClient()
const user = useSupabaseUser()

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
