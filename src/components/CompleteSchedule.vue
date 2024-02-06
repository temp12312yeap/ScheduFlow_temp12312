<script setup>
import { ref } from 'vue'

const project = ref(null)
const complete = ref([]) // Initialize complete as an empty array

async function fetchData() {
  try {
    const res = await fetch('https://scheduflow-json-server.fly.dev/schedules')
    project.value = await res.json()
    complete.value = project.value ? project.value.filter(item => item.status === 'complete') : []
  } catch (error) {
    console.error('Error fetching data:', error)
  }
}

fetchData()
</script>

<template>
  <div>
    <ul>
      <li v-for="item in complete" :key="item.id">
        {{ item.id }} - {{ item.name }} - {{ item.status }}
      </li>
    </ul>
  </div>
</template>
