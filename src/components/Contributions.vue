<template>
  <div>
    <label for="projectName">Enter Project Name:</label>
    <input type="text" id="projectName" v-model="selectedProjectName" />
<!--    <button @click="fetchProjectData">Fetch Project Data</button>-->

    <div v-for="schedule in filteredSchedules" :key="schedule.id">
      <h1>{{ schedule.name }}</h1>
      <p>Description: {{ schedule.description }}</p>
      <p>Manager: {{ schedule.manager }}</p>
      <p>Kick Off Date: {{ schedule.kickOffDate }}</p>
      <p>Due Date: {{ schedule.dueDate }}</p>
      <p>Status: {{ schedule.status }}</p>
      <div>
        <p>Team:</p>
        <ul>
          <li v-for="teamMember in schedule.team" :key="teamMember.memberId">
            <p>Member ID: {{ teamMember.memberId }}</p>
            <p>Contribution: {{ teamMember.contribution }}</p>
            <p>Visits: {{ teamMember.visits }}</p>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, computed } from 'vue';

const schedules = ref([]);
const selectedProjectName = ref('');
const loading = ref(false);
const error = ref(false);

async function fetchData() {
  try {
    const res = await fetch('https://scheduflow-json-server.fly.dev/schedules');
    schedules.value = await res.json();
  } catch (error) {
    console.error('Error fetching data:', error);
    loading.value = false;
    error.value = true;
  }
}

// 프로젝트 이름으로 필터링된 데이터
/*const filteredSchedules = computed(() => {
  return schedules.value.filter(schedule => schedule.name === selectedProjectName.value);
});
*/
const filteredSchedules = computed(() => {
  return schedules.value.filter(schedule =>
    selectedProjectName.value === '' || schedule.name.toLowerCase().includes(selectedProjectName.value)
  );
});
async function fetchProjectData() {
  loading.value = true;
  error.value = false;
  try {
    const res = await fetch('https://scheduflow-json-server.fly.dev/schedules');
    schedules.value = await res.json();
  } catch (error) {
    console.error('Error fetching data:', error);
    loading.value = false;
    error.value = true;
  }
  loading.value = false;
}

onMounted(() => {
  fetchData();
});
</script>

