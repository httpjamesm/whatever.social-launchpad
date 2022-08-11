<script lang="ts">
	import FaSun from 'svelte-icons/fa/FaSun.svelte';
	import FaMoon from 'svelte-icons/fa/FaMoon.svelte';
	import { onMount } from 'svelte';
	import { browser } from '$app/env';

	let theme = 'light';

	onMount(() => {
		if (browser) {
			theme = window.localStorage.getItem('theme') || 'light';
			window.document.documentElement.setAttribute('data-theme', theme);
		}
	});
</script>

<div
	class="switcher"
	on:click={() => {
		theme = theme === 'light' ? 'dark' : 'light';
		window.localStorage.setItem('theme', theme);
		window.document.documentElement.setAttribute('data-theme', theme);
	}}
>
	<div class="icon">
		{#if theme === 'light'}
			<FaSun />
		{:else}
			<FaMoon />
		{/if}
	</div>
</div>

<style lang="scss">
	.switcher {
		height: 3rem;
		width: 3rem;
		display: flex;
		justify-content: center;
		align-items: center;

		background-color: var(--fg);

		border-radius: 50%;

		cursor: pointer;

		top: 1rem;
		right: 1rem;

		position: fixed;

		@media only screen and (max-width: 800px) {
			top: 0.5rem;
			right: 0.5rem;
		}

		.icon {
			height: 1.5rem;
			width: 1.5rem;

			color: var(--bg);
		}
	}
</style>
