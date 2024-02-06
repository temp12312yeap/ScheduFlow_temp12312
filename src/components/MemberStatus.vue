<script setup>
	import {ref, watch} from 'vue'

	const memberData = ref(null)
	
	async function fetchData() {
		memberData.value = null
		 const res = await fetch (
			`https://scheduflow-json-server.fly.dev/schedules` 
		)
		memberData.value  = await res.json()
	}
	fetchData()
	
</script>

<template>
	<ol>
		<li v-for="(member, index) in memberData"> 
			<pre>
				{{member.status}} - {{member.id}}
			</pre>
		</li> 
	</ol>
</template>
