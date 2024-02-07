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

	<div class = "body">
		<div class="top">
			<i>ScheduFlow</i>, schedule management team 
		</div>
	
		 <div class="inline">
			<div class="cal">
				<Calendar />
			</div>
      			<div class ="status">
                		<p>Member Status</p>
                        <MemberStatus />
               		</div>
		        <div class="sdule">
                        	<p>Completed Schedule </p>
                        <CompleteSchedule />
			</div>
                </div>

 		 

		<div class="inline">
	

	
		
	 	 <div class = "contrib">
                        <Contributions />
                </div>
		</div>

	
	</div>

</template>

<style lang="css">
<style scoped>
	.label {
		margin-left: 5px;
		margin-right: 3px;

	}	
	.contrib {
		letter-spacing: 2px;
		width: 500px;
		height: 1000px;	
		text-align: center;
		float:left;
	}
	.sdule {
		left: 10px;
                margin-top : 2px;
                width: 200px;
                height : 200px;
                border: 1px #9cb dashed;
                background-color: #86B9F3;
                border-radius: 3px;
		float:right;
        }		
	.cal {
		width: 600px;
		padding-right : 3px;
	}
	.status {
		float:left;
		letter-spacing: 2px;
		text-align: center;
		width: 400px;
		height : 500px;
		border: 1px #9cb dashed;
		background-color: #9bc;
		border-radius: 5px;
	}
  	.body {
		margin-top : 0;
                width:1200px;
        }
		
	.inline {
		position: relative;
		display: inline-block;
		float: left;	
	}
     	 .status {
                float:right;
        }
	.top {
		color:white;	
	        display:flex;
                background-color: black;
                width:100%;
                margin: 0 auto;
                padding: 0 20px;
	}

      	p {
                font-weight: bold;
                text-align: center;
                padding-bottom: 3px;
        }
</style>
