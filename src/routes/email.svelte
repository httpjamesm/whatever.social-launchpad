<script lang="ts">
	import Service from '../components/Service.svelte';
	import ThemeSwitcher from '../components/ThemeSwitcher.svelte';
</script>

<svelte:head>
	<title>Contact Us</title>
	<meta name="description" content="Whatever Social's e-mail and PGP Public Key." />
	<meta name="og:image" content="/favicon.jpg" />
	<meta name="theme-color" content="#f2f2f2" />
</svelte:head>

<ThemeSwitcher />

<div class="container">
	<h1>whatever<span style="color: #4362ff">.</span>social</h1>
	<h2>Contact us via e-mail</h2>
	<p>
		All e-mails will be received in the same inbox, but choosing the right address will help us
		distinguish the nature of the request more easily.
		<br />
		<br />
		Feel free to contact the admin for general inquiries and issues at
		<a class="link" href="mailto:hello@whatever.social" target="_blank">hello@whatever.social</a>
		<br />
		<br />
		If you are emailing in regards to an inquiry as a law enforcement agency, please e-mail
		<a class="link" href="mailto:legal@whatever.social" target="_blank">legal@whatever.social</a>.
	</p>
	<br />
	<br />
		<h2>PGP Public Key - Send us your e-mail securely</h2>
		<br />
			<pre>
-----BEGIN PGP PUBLIC KEY BLOCK-----

xjMEY2YcxRYJKwYBBAHaRw8BAQdAcsXp6irjbjiAoRQs3/4loB55Lat9wmN4
yRKQ1i25WmnNNWl0c3doYXRldmVydGltZUBwcm90b24ubWUgPGl0c3doYXRl
dmVydGltZUBwcm90b24ubWU+wowEEBYKAD4FAmNmHMUECwkHCAkQwNeKfKFb
rTUDFQgKBBYAAgECGQECGwMCHgEWIQQxwUyJpmnbzfPK78rA14p8oVutNQAA
rogBAJ8f4bEGm/xK6mpF5oow9+4SEbcjVewcZwwOvykEMO/cAP9o1wGGLlsW
C1toJZAFZC9lqWu5DkZIn7ZWggAZCtuyBs44BGNmHMUSCisGAQQBl1UBBQEB
B0AmYeB6l3gaPidCUE+2R1BVqdKH7ztYcVarjTDBabVuDQMBCAfCeAQYFggA
KgUCY2YcxQkQwNeKfKFbrTUCGwwWIQQxwUyJpmnbzfPK78rA14p8oVutNQAA
2IABAOeWU4NTTWUTTCtlakWf8yfP9BzShawSc9LcCu7flfp5AQCzPQ74cpYm
eijbRccmQfUSiWCtqMaIdsm8Rtx3qvBUAA==
=9dkg
-----END PGP PUBLIC KEY BLOCK-----
			</pre>
</div>

<style lang="scss">
	:global(body) {
		display: flex;
		justify-content: center;
	}

	.container {
		float: left;
		width: 30rem;
		padding-top: 1rem;
		text-align: left;

		@media only screen and (max-width: 800px) {
			padding: 1rem;
			box-sizing: border-box;
		}
	}

	.container pre {
		font-size: 70%;
	}
</style>
