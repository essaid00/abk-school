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
                            <div class="w-full md:w-1/3 px-3 mb-2 md:mb-0">
                                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                    for="grid-first-name">
                                    Nom
                                </label>


                                <a-input v-model="form.nom" size="large" autocomplete="off" placeholder="nom" />

                            </div>
                            <div class="w-full md:w-1/3 px-3">
                                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                    for="grid-last-name">
                                    Prénom
                                </label>
                                <input
                                    class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                                    id="grid-last-name" type="text" placeholder="Doe">
                            </div>
                            <div class="w-full md:w-1/3 px-3">
                                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                    for="grid-last-name">
                                    Prénom
                                </label>
                                <input
                                    class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                                    id="grid-last-name" type="text" placeholder="Doe">
                            </div>
                        </div>
                        <div class="flex flex-wrap -mx-3 mb-6">
                            <div class="w-full md:w-1/3 px-3 mb-2 md:mb-0">
                                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                    for="grid-first-name">
                                    Nom
                                </label>
                                <input
                                    class="appearance-none block w-full bg-gray-200 text-gray-700 border  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                                    id="grid-first-name" type="text" placeholder="Jane">

                            </div>
                            <div class="w-full md:w-1/3 px-3 mb-2 md:mb-0">
                                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                    for="grid-first-name">
                                    Nom
                                </label>
                                <input
                              
                                v-model="form.nom"
                                    class="appearance-none block w-full bg-gray-200 text-gray-700 border  rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white-500"
                                    id="grid-first-name" type="text" placeholder="Jane">

                            </div>
                            <div class="w-full md:w-1/3 px-3">
                                <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                    for="grid-last-name">
                                    
                                    Prénom
                                </label>
                                <input
                                v-model="form.prenom"
                                    class="appearance-none block w-full bg-gray-200 text-grey-darker border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white-500 focus:border-gray-600"
                                    id="grid-last-name" type="text" placeholder="Doe">
                            </div>
                        </div>

                        <div class="flex flex-wrap -mx-3 mb-2">
                            <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                    for="grid-city">
                                    niveau
                                </label>

                                <select
                                v-model="form.codeNiveau"
                                    class="block appearance-none w-full bg-grey-200 border border-grey-200 text-grey-darker py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                    id="grid-state">
                                    <option   v-for="niveau in classes.data " v-bind:key="niveau.numero">{{ niveau.niveau }}
                                    </option>

                                </select>
                            </div>
                            <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                    for="grid-state">
                                    classe
                                </label>
                                <div class="relative">

                                    <select
                                    v-model="form.codeClasse"
                                        class="block appearance-none w-full bg-grey-200 border border-grey-200 text-grey-darker py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                        id="grid-state">
                                        <option v-for="classe in niveaus.data " v-bind:key="classe.numero">{{ classe.classe  }}
                                        </option>

                                    </select>
                                    <div
                                        class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-grey-darker">
                                        <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg"
                                            viewBox="0 0 20 20">
                                            <path
                                                d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" />
                                        </svg>
                                    </div>
                                </div>
                            </div>
                            <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                    for="grid-zip">
                                    filiere
                                </label>

                                <select
                                v-model="form.codeFiliere"
                                    class="block appearance-none w-full bg-grey-200 border border-grey-200 text-grey-darker py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-grey"
                                    id="grid-state">
                                    <option v-for="filiere in filieres.data " v-bind:key="filiere.numero">{{ filiere.filiere }}
                                    </option>

                                </select>
                            </div>
                        </div>
                        <div class="flex flex-wrap -mx-3 mb-2">
                            <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                <a-button size="large" htmlType="submit"
                                    class="hover:shadow-form w-full rounded-md bg-grey-800 py-3 px-8 text-center text-base font-semibold text-white outline-none"
                                    @click.stop.prevent="save">
                                    save
                                </a-button>
                            </div>
                            <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                <button
                                    class="hover:shadow-form w-full rounded-md bg-[#6A64F1] py-3 px-8 text-center text-base font-semibold text-white outline-none">
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



const niveaus: any = ref([])
const filieres: any = ref([])
const classes: any = ref([])
const form: any = ref({
    nom: undefined,
    prenom: undefined,
    dateNaissance: undefined,
    lieuNaissance: undefined,
    cin: undefined,
    adresse: undefined,
    tel: undefined,
    email: undefined,
    derniereFormation: undefined,
    derniereDiplome: undefined,
    dernierEtablissement: undefined,
    photoPath: undefined,
    codeClasse: undefined,
    CodeFiliere: undefined,
    mnt_initial_scolarite: undefined,
    codeVille: undefined,
    codeQuartie: undefined,
    mntInitialAppartement: undefined,
    codeAnnee: undefined,
    codeInternat: undefined,
    codeAppartement: undefined,
    codeSuspension: undefined,
    motifSuspension: undefined,
    dateSuspension: undefined,
})
onBeforeMount(async () => {
    niveaus.value = await useFetch(`/api/prisma/get-all-niveaus`)
    filieres.value = await useFetch(`/api/prisma/get-all-filieres`)
    classes.value = await useFetch(`/api/prisma/get-all-classes`)
})

onMounted(() => {
    setTimeout(() => userStore.isLoading = false, 200)
})

async function save() {
    console.log('eeeeeeeeeeeeee')
    await useFetch('/api/prisma/create-stagiaire', {
        method: "POST",
        body: {

            nom: form.value.nom,
            prenom: form.value.prenom,
            dateNaissance: form.value.dateNaissance,
            lieuNaissance: form.value.lieuNaissance,
            cin: form.value.cin,
            adresse: form.value.adresse,
            tel: form.value.tel,
            email: form.value.email,
            derniereFormation: form.value.derniereFormation,
            derniereDiplome: form.value.derniereDiplome,
            dernierEtablissement: form.value.dernierEtablissement,
            photoPath: form.value.photoPath,
            codeClasse: form.value.codeClasse,
            CodeFiliere: form.value.CodeFiliere,
            mnt_initial_scolarite: form.value.mnt_initial_scolarite,
            codeVille: form.value.codeVille,
            codeQuartie: form.value.codeQuartie,
            mntInitialAppartement: form.value.mntInitialAppartement,
            codeAnnee: form.value.codeAnnee,
            codeInternat: form.value.codeInternat,
            codeAppartement: form.value.codeAppartement,
            codeSuspension: form.value.codeSuspension,
            motifSuspension: form.value.motifSuspension,
            dateSuspension: form.value.dateSuspension,

        }
    })
}

</script>