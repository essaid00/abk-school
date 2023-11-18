<template>
    <MainLayout>
        <Spin :spinning="loading" tip="Loading..." size="large">
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


                                    <a-input v-model:value="form.nom" size="large" autocomplete="off" placeholder="nom" />

                                </div>
                                <div class="w-full md:w-1/3 px-3">
                                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                        for="grid-last-name">
                                        Prénom
                                    </label>
                                    <a-input v-model:value="form.prenom" size="large" autocomplete="off"
                                        placeholder="nom" />


                                </div>
                                <div class="w-full md:w-1/3 px-3">
                                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                        for="grid-last-name">
                                        cin
                                    </label>
                                    <a-input v-model:value="form.cin" size="large" autocomplete="off" placeholder="cin" />


                                </div>
                            </div>
                            <div class="flex flex-wrap -mx-3 mb-6">
                                <div class="w-full md:w-1/3 px-3 mb-2 md:mb-0">
                                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                        for="grid-first-name">
                                        Nomssssssss
                                    </label>
                                    <a-date-picker
                    size="large"
                    v-model:value="form.dateNaissance"
                    allowClear
                    format="DD/MM/YYYY"
                    valueFormat="DD/MM/YYYY"
                    :showTime="false"
                    dropdownClassName="j-vxe-date-picker"
                    style="width: 100%"
                  />

                                </div>
                                <div class="w-full md:w-1/3 px-3 mb-2 md:mb-0">
                                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                        for="grid-first-name">
                                        Nom
                                    </label>


                                </div>
                                <div class="w-full md:w-1/3 px-3">
                                    <label class="block uppercase tracking-wide text-gray-700 text-xs font-light mb-1"
                                        for="grid-last-name">

                                        Prénom
                                    </label>

                                </div>
                            </div>

                            <div class="flex flex-wrap -mx-3 mb-2">
                                <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                    <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                        for="grid-city">
                                        niveau
                                    </label>
                                    <div class="relative">
                                        <a-select size="large" v-model:value="form.codeNiveau"
                                            placeholder="Active OU en Retraite" style="width: 100%">
                                            <a-select-option v-for="item in niveaus.data" :key="item.numero">{{
                                                item.niveau }}
                                            </a-select-option>
                                        </a-select>
                                      
                                    
                                    </div>
                                </div>
                                <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                    <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                        for="grid-state">
                                        classe
                                    </label>
                                    <div class="relative">

                  
                                        <a-select size="large" v-model:value="form.codeClasse"
                                            placeholder="Active OU en Retraite" style="width: 100%">
                                            <a-select-option v-for="item in classes.data" :key="item.numero">{{
                                                item.classe }}
                                            </a-select-option>
                                        </a-select>
                                    </div>
                                </div>
                                <div class="w-full md:w-1/3 px-3 mb-6 md:mb-0">
                                    <label class="block uppercase tracking-wide text-grey-darker text-xs font-light mb-1"
                                        for="grid-zip">
                                        filiere
                                    </label>
                                    <div class="relative">

                                    
                                        <a-select size="large" v-model:value="form.codeFiliere"
                                            placeholder="Active OU en Retraite" style="width: 100%">
                                            <a-select-option v-for="item in filieres.data" :key="item.numero">{{
                                                item.filiere }}
                                            </a-select-option>
                                        </a-select>

                                    </div>
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
            <div class="flex flex-1  flex-col md:flex-row lg:flex-row mx-2">
                <div class="mb-2 border-solid border-gray-300 rounded border shadow-sm w-full">
                    
                    <tableStagire></tableStagire>
                </div></div>
            </Spin>
            <!--/Grid Form-->
    </MainLayout>
</template>

<script setup lang="ts" >
import { useUserStore } from '~/stores/user';
import MainLayout from '~/layouts/MainLayout.vue';
import tableStagire from './table.vue'
import { ref, reactive } from 'vue';
import { Spin } from 'ant-design-vue';
import moment from 'moment'; 
const userStore = useUserStore()
const niveaus: any = ref([])
const filieres: any = ref([])
const classes: any = ref([])
const form: any = reactive({
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
    codeFiliere: undefined,
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
    codeNiveau: undefined,
})
onBeforeMount(async () => {
    niveaus.value = await useFetch(`/api/prisma/get-all-niveaus`)
    filieres.value = await useFetch(`/api/prisma/get-all-filieres`)
    classes.value = await useFetch(`/api/prisma/get-all-classes`)
})
let loading = ref(false);
onMounted(() => {
    setTimeout(() => userStore.isLoading = false, 200)
})

async function save() {
    loading.value = (true);
    setTimeout(() =>  loading.value = false, 800)
    console.log(moment(form.dateNaissance, "DD/MM/YYYY"));
    console.log('eeeeeeeeeeeeee')
    console.log(form)
    await useFetch('/api/prisma/create-stagiaire', {
        method: "POST",
        body: {
            nom: form.nom,
            prenom: form.prenom,
            dateNaissance: moment(form.dateNaissance, "DD/MM/YYYY"),
            lieuNaissance: form.lieuNaissance,
            cin: form.cin,
            adresse: form.adresse,
            tel: form.tel,
            email: form.email,
            derniereFormation: form.derniereFormation,
            derniereDiplome: form.derniereDiplome,
            dernierEtablissement: form.dernierEtablissement,
            photoPath: form.photoPath,
            codeClasse: form.codeClasse,
            codeFiliere: form.codeFiliere,
            codeNiveau: form.codeNiveau,
            mnt_initial_scolarite: form.mnt_initial_scolarite,
            codeVille: form.codeVille,
            codeQuartie: form.codeQuartie,
            mntInitialAppartement: form.mntInitialAppartement,
            codeAnnee: form.codeAnnee,
            codeInternat: form.codeInternat,
            codeAppartement: form.codeAppartement,
            codeSuspension: form.codeSuspension,
            motifSuspension: form.motifSuspension,
            dateSuspension: form.dateSuspension,

        }
    })
}

</script>