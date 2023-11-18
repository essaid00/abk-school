<template>
  <div id="ShoppingCartPage" class="mt-4 max-w-[1200px] mx-auto px-2">
    <a-table :columns="columns" :data-source="data">
      <template #headerCell="{ column }">
        <template v-if="column.key === 'nom'">
          <span>
            <smile-outlined />
            nom
          </span>
        </template>
      </template>

      <template #bodyCell="{ column, record }">
        <template v-if="column.key === 'nom'">
          <a>
            {{ record.nom }}
          </a>
        </template>
        <template v-else-if="column.key === 'classe'">
          <a>
            
            {{ record.classe.classe }}
          </a>
        </template>
        <template v-else-if="column.key === 'filiere'">
          <a>
            
            {{ record.filiere.filiere }}
          </a>
        </template>
        <template v-else-if="column.key === 'niveau'">
          <a>
            
            {{ record.niveau.niveau }}
          </a>
        </template>
        <template v-else-if="column.key === 'tags'">
          <span>
            <a-tag v-for="tag in record.tags" :key="tag"
              :color="tag === 'loser' ? 'volcano' : tag.length > 5 ? 'geekblue' : 'green'">
              {{ tag.toUpperCase() }}
            </a-tag>
          </span>
        </template>
        <template v-else-if="column.key === 'action'">
          <span>
           
            <a-button class=""    >
                                        save
                                    </a-button>
            <a-divider type="vertical" />
            <a>Delete</a>
            <a-divider type="vertical" />
            <a class="ant-dropdown-link">
              More actions
              <down-outlined />
            </a>
          </span>
        </template>
      </template>
    </a-table>
  </div>
</template>
<script lang="ts" setup>
import { SmileOutlined, DownOutlined } from '@ant-design/icons-vue';
import { useUserStore } from '~/stores/user';
const userStore = useUserStore()
const data :any = ref([])
onBeforeMount(async () => {

  let s = await useFetch('/api/prisma/get-all-stagiaire')


  setTimeout(() => {
    data.value = (s.data.value)
    console.log(s.data.value)
    userStore.isLoading = false
  }, 1000)
})
const columns = [
  {
    name: 'nom',
    dataIndex: 'nom',
    key: 'nom',
  },
  {
    title: 'prenom',
    dataIndex: 'prenom',
    key: 'prenom',
  },
  {
    title: 'cin',
    dataIndex: 'cin',
    key: 'cin',
  },
  {
    title: 'niveau',
    dataIndex: 'niveau',
    key: 'niveau',
  },
  {
    title: 'classe',
    key: 'classe',
    dataIndex: 'classe',
  },
  {
    title: 'filiere',
    key: 'filiere',
    dataIndex: 'filiere',
  },
  {
    title: 'Action',
    key: 'action',
  },
];


</script>
  
  