<script setup>
import { fetchData, fetchDataMembers } from 'scheduflow'
import { ref, onMounted } from 'vue'

const jsonData = ref(null)

onMounted(async () => {
  try {
    jsonData.value = await fetchData()
  } catch (error) {
    console.error('Error fetching data:', error)
  }
})

//import HelloWorld from './components/HelloWorld.vue'
//import TheWelcome from './components/TheWelcome.vue'
import CompleteSchedule from './components/CompleteSchedule.vue'
import Contributions from './components/Contributions.vue'
import MemberStatus from './components/MemberStatus.vue'
import Calendar from './components/Calendar.vue'
</script>

<template>
	<CompleteSchedule :jsonData="jsonData" />
	<div class="calendar-app">
		<Calendar />
	</div>
	
	<MemberStatus />
	<Contributions />
</template>

<style lang="css">

</style>
