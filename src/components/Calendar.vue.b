<script setup>
import { ref, watch } from 'vue'
import '../assets/css/fullcalendar.css'
import '../assets/css/fullcalendar.print.css'
import '../assets/js/jquery-1.10.2.js'
import '../assets/js/jquery-ui.custom.min.js'
import '../assets/js/fullcalendar.js'

const schedules = ref(null)
var calendar_list = [];

async function fetchData() {
        schedules.value = null
        const res = await fetch(
                'https://scheduflow-json-server.fly.dev/schedules'
        )
        schedules.value = await res.json()
		schedules.value.forEach(element => {
			console.log(element.kickOffDate + '/' + element.dueDate) 
			const start = element.kickOffDate.split('-')
			const end = element.dueDate.split('-')
			let data = {
				'title': element.name,
				'start': new Date(start[0], start[1]-1, start[2]),
				'end' : new Date(end[0], end[1]-1, end[2])
			}
			calendar_list.push(data)
		});
		console.log(calendar_list)
}

function setCalendar() {

		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		/*  className colors
		className: default(transparent), important(red), chill(pink), success(green), info(blue)
		*/

		/* initialize the calendar
		-----------------------------------------------------------------*/

		var calendar =  $('#calendar').fullCalendar({
			header: {
				left: 'title',
				center: 'month',
				right: 'prev,next today'
			},
			editable: false,
			firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
			selectable: false,
			defaultView: 'month',
			axisFormat: 'h:mm',
			columnFormat: {
                month: 'ddd',    // Mon
                week: 'ddd d', 	// Mon 7
                day: 'dddd M/d',  // Monday 9/7
                agendaDay: 'dddd d'
            },
            titleFormat: {
                month: 'MMMM yyyy', // September 2009
                week: "MMMM yyyy", 	// September 2009
                day: 'MMMM yyyy'  	// Tuesday, Sep 8, 2009
            },
			allDaySlot: false,
			selectHelper: false,

			events: calendar_list
		});


}

fetchData()
setCalendar()

watch(schedules, setCalendar)	

</script>

<template>
<body>
<div id='wrap'>

<div id='calendar'></div>

<div style='clear:both'></div>
</div>


</body>
</template>
