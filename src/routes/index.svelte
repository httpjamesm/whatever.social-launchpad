<script lang="ts">
	import ThemeSwitcher from '../components/ThemeSwitcher.svelte';
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

	<p class="credit">
		Website made with ❤️ by <a href="https://httpjames.space" target="_blank">http.james</a> on
		<a
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

		.credit {
			font-size: 0.9rem;
		}
	}
</style>
