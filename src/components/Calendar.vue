<script setup>
import { ref, watch, onUpdated } from 'vue'


import FullCalendar from '@fullcalendar/vue3'
import dayGridPlugin from '@fullcalendar/daygrid'
import timeGridPlugin from '@fullcalendar/timegrid'

const schedules = ref(null)
var calendar_list = ref([
	//{id: 0, title: 'scheduFlow', start: '2024-02-01', end: '2024-02-05'}
])

var calendarOptions = {
        plugins: [
          dayGridPlugin,
		  timeGridPlugin,
        ],
        headerToolbar: {
          left: 'prev,next today',
          center: 'title',
          right: 'dayGridMonth'
        },
        initialView: 'dayGridMonth',
        initialEvents: calendar_list.value,
	
}

const props = defineProps({
  jsonData: Object
})

async function fetchData() {
		console.log(calendarOptions.initialEvents)
        schedules.value = null
        const res = await fetch(
                'https://scheduflow-json-server.fly.dev/schedules'
        )
        schedules.value = await res.json()
		schedules.value.forEach((element,index) => {
			//const start = element.kickOffDate.split('-')
			//const end = element.dueDate.split('-')
			let data = {
				'id': index,
				'title': element.name,
				//'start': new Date(start[0], start[1]-1, start[2]).toISOString().replace(/T.*$/, ''),
				//'end' : new Date(end[0], end[1]-1, end[2]).toISOString().replace(/T.*$/, '')
				'start' : element.kickOffDate,
				'end' : element.dueDate
			}
			calendar_list.value.push(data)
		});
		console.log(calendarOptions.initialEvents)
		//setOptions()
}

fetchData()

</script>

<template>
	<div class="calendar-app">
		<FullCalendar :options='calendarOptions' 
			:height="600"
			v-if="calendarOptions.initialEvents.length > 0"
		
		/>
	</div>
</template>