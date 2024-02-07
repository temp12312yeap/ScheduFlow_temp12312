<script setup>
	import {ref, watch} from 'vue'

	const memberData = ref(null)
	
	async function fetchData() {
		memberData.value = null
		 const res = await fetch (
			`https://scheduflow-json-server.fly.dev/members` 
		)
		memberData.value  = await res.json()
	}
	fetchData()
	
</script>

<template>
	<ul>
		<li v-for="(member, index) in memberData"> 
				{{member.name}} - {{member.status}}
			
		</li> 
	</ul>
</template>
