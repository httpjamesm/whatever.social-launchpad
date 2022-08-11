<script lang="ts">
	import Service from '../components/Service.svelte';
	import ThemeSwitcher from '../components/ThemeSwitcher.svelte';

	let socialServices = [
		{
			name: 'Piped',
			desc: 'Piped is an alternative frontend to YouTube.',
			url: 'https://watch.whatever.social',
			src: 'https://github.com/TeamPiped/Piped',
			iconUrl: 'https://watch.whatever.social/favicon.ico'
		},
		{
			name: 'Nitter',
			desc: 'Nitter is an alternative frontend for Twitter.',
			url: 'https://read.whatever.social',
			src: 'https://github.com/zedeus/nitter',
			iconUrl: 'https://read.whatever.social/favicon.ico'
		}
	];
</script>

<ThemeSwitcher />

<div class="container">
	<h1>whatever.social</h1>
	<h2>High-quality FOSS instances for all.</h2>
	<p>
		whatever.social is a collection of <u>speedy and reliable</u> self-hosted instances of popular FOSS
		projects, like Piped, Nitter and Hyperpipe. Our growing library focuses on alternatives to privacy
		invasive services, like Google and Twitter.
	</p>

	<div class="services">
		<h3>Social Frontends</h3>
		{#each socialServices as service}
			<Service {...service} />
		{/each}
	</div>

	<p class="credit">
		Website made with ❤️ by <a class="link" href="https://httpjames.space" target="_blank"
			>http.james</a
		>
		on
		<a
			class="link"
			href="https://github.com/httpjamesm/whatever.social-launchpad"
			target="_blank"
			rel="noopener noreferrer">Github</a
		>.
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

		.services {
			display: flex;
			flex-wrap: wrap;
		}

		.credit {
			font-size: 0.9rem;
		}
	}
</style>
