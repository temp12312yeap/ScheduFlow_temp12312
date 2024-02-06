<script setup>
import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
import CompleteSchedule from './components/CompleteSchedule.vue'
import Contributions from './components/Contributions.vue'
import MemberStatus from './components/MemberStatus.vue'
//import Calendar from './components/Calendar.vue'
</script>

<template>
	<CompleteSchedule />
<!--	<Calendar />-->
	<MemberStatus />
	<Contributions /> 
</template>

<style scoped>
header {
  line-height: 1.5;
}

.logo {
  display: block;
  margin: 0 auto 2rem;
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: center;
    padding-right: calc(var(--section-gap) / 2);
  }

  .logo {
    margin: 0 2rem 0 0;
  }

  header .wrapper {
    display: flex;
    place-items: flex-start;
    flex-wrap: wrap;
  }
}
</style>
