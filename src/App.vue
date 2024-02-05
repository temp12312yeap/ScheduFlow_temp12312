<script setup>
//import HelloWorld from './components/HelloWorld.vue'
//import TheWelcome from './components/TheWelcome.vue'
import CompleteSchedule from './components/CompleteSchedule.vue'
import Contributions from './components/Contributions.vue'
import MemberStatus from './components/MemberStatus.vue'
import Calendar from './components/Calendar.vue'
</script>

<template>
	<CompleteSchedule />
	<div class="calendar-app">
		<Calendar />
	</div>
	
	<MemberStatus />
	<Contributions />
</template>

<style lang="css">

</style>
