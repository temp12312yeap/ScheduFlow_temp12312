<script setup>
import { ref } from 'vue'
import { fetchData } from  'scheduflow'

const project = ref()
const complete = ref([]) // Initialize complete as an empty array

/*
fetchData()
async function initializeData() {
  try {
    const data = await fetchData()
    project.value = data
    complete.value = data ? data.filter(item => item.status === 'complete') : []
  } catch (error) {
    console.error('Error fetching data:', error)
  }
}

initializeData()*/

const props = defineProps({
  jsonData: Object
})

function filter() {
  try {
    //const res = await fetch('https://scheduflow-json-server.fly.dev/schedules')
    project.value = props.jsonData
    complete.value = project.value ? project.value.filter(item => item.status === "complete") : []
  } catch (error) {
    console.error('Error fetching data:', error)
  }
}

filter()
//complete.value = props.jsonData ? props.jsonData.filter(item => item.status === 'complete') : []
//const completeItems = props.jsonData.filter(item => item.status === `complete`)
// if (props.jsonData) {
//   complete.value = props.jsonData.filter(item => item.status === 'complete')
// }

</script>

<template>
  <div>
<h1>complete </h1>
    <ul>
      <li v-for="item in complete" :key="item.id">
	       {{ item.id }} - {{ item.name }} - {{ item.status }}
      </li>
    </ul>

  </div>
</template>
