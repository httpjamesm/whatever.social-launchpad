<script lang="ts">
	import Service from '../components/Service.svelte';
	import ThemeSwitcher from '../components/ThemeSwitcher.svelte';

	let socialServices = [
		{
			name: 'Piped',
			desc: 'An alternative frontend for YouTube.',
			url: 'https://watch.whatever.social',
			src: 'https://github.com/TeamPiped/Piped',
			iconUrl: 'https://watch.whatever.social/favicon.ico',
			statusId: 'watch'
		},
		{
			name: 'Nitter',
			desc: 'An alternative frontend for Twitter.',
			url: 'https://read.whatever.social',
			src: 'https://github.com/zedeus/nitter',
			iconUrl: 'https://read.whatever.social/favicon.ico',
			statusId: 'read'
		},
		{
			name: 'Hyperpipe',
			desc: 'An alternative frontend for YouTube Music.',
			url: 'https://listen.whatever.social',
			src: 'https://codeberg.org/Hyperpipe/Hyperpipe',
			iconUrl: 'https://listen.whatever.social/favicon.svg',
			statusId: 'listen'
		},
		{
			name: 'Libreddit',
			desc: 'An alternative frontend for Reddit',
			url: 'https://discuss.whatever.social',
			src: 'https://github.com/libreddit/libreddit',
			iconUrl: 'https://discuss.whatever.social/favicon.svg',
			statusId: 'libreddit'
		},
		{
			name: 'Proxitok',
			desc: 'Coming Soon - An alternative frontend for Tiktok',
			url: 'https://whatever.social',
			src: 'https://github.com/pablouser1/ProxiTok',
			iconUrl: 'https://raw.githubusercontent.com/pablouser1/ProxiTok/master/favicon.ico',
			statusId: 'proxitok'
		}
	];

	let socialNetworkServices = [
		{
			// add here
		}
	];

	let tinfoilServices = [
		{
			name: 'Piped (Tinfoil)',
			desc: 'The same alternative frontend for YouTube, but with even more privacy.',
			url: 'https://watch.whatevertinfoil.de',
			src: 'https://github.com/TeamPiped/Piped',
			iconUrl: 'https://watch.whatever.social/favicon.ico',
			statusId: 'tinfoil_piped'
		}
	];
</script>

<svelte:head>
	<title>whatever.social - Premium FOSS instances for all</title>
	<meta
		name="description"
		content="Premium self-hosted instances of popular social media frontends. No ads, no trackers, just content."
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
		Have questions or feedback? Contact the admin via <a
			class="link"
			href="https://whatever.social/email"
			target="_blank">E-mail</a
		>
		or
		<span
			class="link"
			on:click={() => {
				try {
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
				} catch (e) {
					navigator.clipboard
						.writeText('0588cff4c1a032b40514e8c9fb1a52124e9865953c0dd052563dce47a8c727256e')
						.then(function (x) {
							alert('Session ID was beamed to your device. Paste away!');
						});
				}
			}}>Session</span
		>.
	</p>

	<h3>Alternative Frontends</h3>
	<p>
		All our main alternative frontends proxy your requests through our server in LA, making you much
		harder to track by these companies.
	</p>
	<div class="services">
		{#each socialServices as service}
			<Service {...service} />
		{/each}
	</div>

	<!--	<h3>Social Networks</h3>
	<div class="services">
		{#each socialNetworkServices as service}
			<Service {...service} />
		{/each}
	</div>
	<br /> -->

	<br />
	<h3>Whatever Tinfoil</h3>
	<p>
		An edition of Whatever Social services for the hardcore privacy enthusiasts. Hosted on a
		separate server in Nuremburg, Germany, these CDN-free instances fetch data straight from our server, 
		giving the appreciated tinfoil-hat-wearers better peace of mind.
	</p>
	<div class="services">
		{#each tinfoilServices as service}
			<Service {...service} />
		{/each}
	</div>

	<br />
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
				try {
					navigator.permissions.query({ name: 'clipboard-write' }).then((result) => {
						if (result.state == 'granted' || result.state == 'prompt') {
							navigator.clipboard
								.writeText(
									'87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7'
								)
								.then(function (x) {
									alert('The Monero address was beamed to your device. Paste away!');
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
									"For some reason we couldn't copy the Monero address to your clipboard. Here's the ID: 87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7"
								);
							}
						}
					});
				} catch (e) {
					navigator.clipboard
						.writeText(
							'87tu5QTMSKmi8RmyyRCP1daBouRKegmL54k9d4cqqWscHWTqSaKRXQu9X2g81JgJyfQFbyL1dTRmR6TsZ8oZZqLj1Ljfyd7'
						)
						.then(function (x) {
							alert('The Monero address was beamed to your device. Paste away!');
						});
				}
			}}>Monero</span
		>.
	</p>
	<br />
	<p class="additional">
		View our
		<a class="link" href="https://whatever.social/privacy" target="_blank">Privacy Policy</a>,
		<a
			class="link"
			href="https://whatever.social/transparency"
			target="_blank"
			rel="noopener noreferrer">Transparency Report</a
		>
		and this site's
		<a
			class="link"
			href="https://github.com/httpjamesm/whatever.social-launchpad"
			target="_blank"
			rel="noopener noreferrer">Code</a
		>
	</p>

	<p class="credit">
		Website made with ❤️ by <a class="link" href="https://httpjames.space" target="_blank"
			>http.james</a
		>
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

		.additional {
			font-size: 0.9rem;
		}

		.credit {
			font-size: 0.9rem;
		}
	}
</style>
