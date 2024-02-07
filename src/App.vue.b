<script setup>
//import HelloWorld from './components/HelloWorld.vue'
//import TheWelcome from './components/TheWelcome.vue'
import CompleteSchedule from './components/CompleteSchedule.vue'
import Contributions from './components/Contributions.vue'
import MemberStatus from './components/MemberStatus.vue'
import Calendar from './components/Calendar.vue'
</script>
<template>
	
	<div class = "body">
		<div class="top">
			<i>ScheduFlow</i>, schedule management team 
		</div>

      		
		<div class="sdule">
			<p>Completed Schedule </p>
			<CompleteSchedule />
		</div>
     		 <div class = "contrib">
                        <Contibutions />
                </div>
		 <div class="inline">
			<div class="cal">
				<Calendar />
			</div>
 		 </div>	
		<div class ="status">
		<p>Member Status</p>
                        <MemberStatus />
        	</div>



	
	</div>

</template>

<style lang="css">
<style scoped>
	.contrib {
		width: 700px;
		height: 1000px;	
	}
	.sdule {
                margin-top : 2px;
                width: 250px;
                height : 180px;
                border: 1px #9cb dashed;
                background-color: #86B9F3;
                border-radius: 3px;
        }		
	.cal {
		width: 600px;
		padding-right : 3px;
	}
	.status {
		width: 500px;
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
