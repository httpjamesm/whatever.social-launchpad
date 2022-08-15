<script lang="ts">
	import Service from '../components/Service.svelte';
	import ThemeSwitcher from '../components/ThemeSwitcher.svelte';

	let socialServices = [
		{
			name: 'Piped',
			desc: 'Piped is an alternative frontend to YouTube.',
			url: 'https://watch.whatever.social',
			src: 'https://github.com/TeamPiped/Piped',
			iconUrl: 'https://watch.whatever.social/favicon.ico',
			statusId: 'watch'
		},
		{
			name: 'Nitter',
			desc: 'Nitter is an alternative frontend for Twitter.',
			url: 'https://read.whatever.social',
			src: 'https://github.com/zedeus/nitter',
			iconUrl: 'https://read.whatever.social/favicon.ico',
			statusId: 'read'
		},
		{
			name: 'Hyperpipe',
			desc: 'A privacy respecting frontend for YouTube Music.',
			url: 'https://listen.whatever.social',
			src: 'https://codeberg.org/Hyperpipe/Hyperpipe',
			iconUrl: 'https://listen.whatever.social/favicon.svg',
			statusId: 'listen'
		}
	];

	let socialNetworkServices = [
		{
			name: 'Pixelfed',
			desc: 'A free and ethical photo sharing platform.',
			url: 'https://share.whatever.social',
			src: 'https://github.com/pixelfed',
			iconUrl: '/icons/pixelfed.png',
			statusId: 'share'
		}
	];
</script>

<svelte:head>
	<title>whatever.social - Premium FOSS instances for all</title>
	<meta
		name="description"
		content="whatever.social is a collection of speedy and reliable self-hosted instances of popular FOSS projects, like Piped, Nitter and Hyperpipe. Our growing library focuses on alternatives to privacy invasive services, like Google and Twitter."
	/>
	<meta name="og:image" content="/favicon.jpg" />
	<meta name="theme-color" content="#f2f2f2" />
</svelte:head>

<ThemeSwitcher />

<div class="container">
	<h1>whatever<span style="color: #4362ff">.</span>social</h1>
	<h2>Premium FOSS instances for all.</h2>
	<p>
		whatever.social is a collection of <b>speedy and reliable</b> self-hosted instances of popular FOSS
		projects, like Piped, Nitter and Hyperpipe. Our growing library focuses on alternatives to privacy
		invasive services, like Google and Twitter.
	</p>

	<p>
		Have questions or feedback? Contact the admin via <span
			class="link"
			on:click={() => {
				// clipboard copy
				// @ts-ignore
				navigator.permissions.query({ name: 'clipboard-write' }).then((result) => {
					if (result.state == 'granted' || result.state == 'prompt') {
						navigator.clipboard
							.writeText('0588cff4c1a032b40514e8c9fb1a52124e9865953c0dd052563dce47a8c727256e')
							.then(function (x) {
								alert('Session ID was beamed to your device. Paste away!');
							});
					} else {
						try {
							navigator.clipboard
								.writeText('0588cff4c1a032b40514e8c9fb1a52124e9865953c0dd052563dce47a8c727256e')
								.then(function (x) {
									alert(
										"Whoops, we're not sure if this copied in your browser. Here's the ID just in case: 0588cff4c1a032b40514e8c9fb1a52124e9865953c0dd052563dce47a8c727256e"
									);
								});
						} catch (e) {
							alert(
								"For some reason we couldn't copy the Session ID to your clipboard. Here's the ID: 0588cff4c1a032b40514e8c9fb1a52124e9865953c0dd052563dce47a8c727256e"
							);
						}
					}
				});
			}}>Session</span
		>.
	</p>

	<h3>Alternative Frontends</h3>
	<div class="services">
		{#each socialServices as service}
			<Service {...service} />
		{/each}
	</div>

	<h3>Social Networks</h3>
	<div class="services">
		{#each socialNetworkServices as service}
			<Service {...service} />
		{/each}
	</div>

	<br />
	<h4>Help keep the project afloat</h4>
	<p>
		As a student, mounting server costs may become a problem in the future. If you'd like to support
		this project's growth, please consider donating via <a
			class="link"
			rel="noopener noreferrer"
			target="_blank"
			href="https://liberapay.com/whateversocial">Liberapay</a
		>
		or
		<span
			class="link"
			on:click={() => {
				// clipboard copy
				// @ts-ignore
				navigator.permissions.query({ name: 'clipboard-write' }).then((result) => {
					if (result.state == 'granted' || result.state == 'prompt') {
						navigator.clipboard
							.writeText(
								'87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7'
							)
							.then(function (x) {
								alert('The Monero Address was beamed to your device. Paste away!');
							});
					} else {
						try {
							navigator.clipboard
								.writeText(
									'87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7'
								)
								.then(function (x) {
									alert(
										"Whoops, we're not sure if this copied in your browser. Here's the address just in case: 87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7"
									);
								});
						} catch (e) {
							alert(
								"For some reason we couldn't copy the Monero Address to your clipboard. Here's the address: 87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7"
							);
						}
					}
				});
			}}>Monero</span
		>.
	</p>

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

		@media only screen and (max-width: 800px) {
			padding: 1rem;
			box-sizing: border-box;
		}

		.services {
			display: flex;
			flex-wrap: wrap;
		}

		.credit {
			font-size: 0.9rem;
            padding-bottom: 1rem;
		}
	}
</style>
