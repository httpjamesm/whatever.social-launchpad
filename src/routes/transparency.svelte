<script lang="ts">
	import Service from '../components/Service.svelte';
	import ThemeSwitcher from '../components/ThemeSwitcher.svelte';
	import { browser } from '$app/env';

	if (browser) {
		if (window.localStorage.getItem('theme') === undefined) {
			window.localStorage.setItem('theme', 'dark');
			window.location.reload();
		}
	}
</script>

<svelte:head>
	<title>Transparency</title>
	<meta
		name="description"
		content="A list of Whatever Social's requests from government and/or law enforcement agencies"
	/>
	<meta name="og:image" content="/favicon.jpg" />
	<meta name="theme-color" content="#f2f2f2" />
</svelte:head>

<ThemeSwitcher />

<div class="container">
	<h1>whatever<span style="color: #4362ff">.</span>social</h1>
	<h2>Transparency Report</h2>
	<br />
	<h3>2022</h3>
	<p>
		As of November 1st, 2022, we have received 0 requests from government and/or law enforcement
		agencies.
	</p>
</div>

<style lang="scss">
	:global(body) {
		display: flex;
		justify-content: center;
	}

	.container {
		width: 30rem;
		padding-top: 1rem;

		@media only screen and (max-width: 800px) {
			padding: 1rem;
			box-sizing: border-box;
		}
	}
</style>
