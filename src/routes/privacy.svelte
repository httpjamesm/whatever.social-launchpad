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
	<title>Privacy Policy</title>
	<meta name="description" content="Learn more about how we protect your privacy" />
	<meta name="og:image" content="/favicon.jpg" />
	<meta name="theme-color" content="#f2f2f2" />
</svelte:head>

<ThemeSwitcher />

<div class="container">
	<h1>whatever<span style="color: #4362ff">.</span>social</h1>
	<h2>Privacy Policy</h2>
	<p>
		"We", "our" and "us" refers to whatever.social's and whatevertinfoil.de's maintainers and/or
		developers. "You" refers to you as the user of our services.
		<br />
		<br />
		Whatever Social is committed to giving users more control over their digital life. This is why we
		take steps to help ensure we are providing a private and secure experience while you browse your
		favorite social media. This policy outlines important details such as what we store, what you will
		need to consult third parties for, and situations where we cannot protect you.
		<br />
		<br />
		This policy applies to all whatever.social sites, found at https://whatever.social, https://whatevertinfoil.de
		and all their subdomains. Some sections of this policy may be specific to one of our services, in
		which case it is specified. By using our services, you are agreeing to this policy.
		<br /> <br />
		Last updated: February 20, 2023
	</p>
	<br />
	<br />
	<h2>👤 Personal Data</h2>
	<p>
		While visiting our sites: The logging done on our sites is minimal to keep the experience
		private. For example, our NGINX (A service that we use on our server) logs are kept disabled.
		However, this may not always be the case. In the event of a critical system error or an attack
		on our services, such as a DDoS, it may be necessary to temporarily enable logs to diagnose and
		remedy the issue. In scenarios such as these, logs will be purged as soon as the issue is dealt
		with. If you are found to be engaging in activities that harm our services, such as spamming,
		DDoS or brute-force attacks, your IP address may be stored permanently to protect us, our
		services and other users of our services. View the "Law Enforcement" section of this policy to
		see how we may be forced to enable them in other situations. An NGINX log, in the duration that
		its stored, may include your IP address, user agent, and a timestamp along with your web
		request. See the "Third-parties providing Technical Services" section of this policy.
		<br />
		<br />
		Information you provide to us: Usernames are stored for the services they apply to. Your e-mail address
		is received by us when you choose to contact us via e-mail. Your Session Messenger "ID" is received
		by us when you choose to contact us via Session. No other identifiable information is provided by
		you to us.
		<br />
		<br />
		Information we share: Your information is not shared with other entities, except in the cases outlined
		in the "Third-parties providing Technical Services", "Third-parties providing Payment Services",
		and "Law Enforcement" sections of this policy.
	</p>
	<br />
	<br />
	<h2>🍪 Cookies</h2>
	<p>
		The only use of cookies and local storage in our services is to keep you signed into our
		services which accounts can be used in, and to save your preferences (Ex: Default video quality
		on https://watch.whatever.social). We do not use cookies for any other purposes.
	</p>
	<br />
	<br />
	<h2>⚖️ Law Enforcement</h2>
	<p>
		In the event of a subpoena, court order, other legal process, or to exercise our legal rights
		and/or to defend against legal claims, we may be forced to give applicable information with
		third-parties. Our sites hosted on our whatever.social domain operate on a server in Los Angeles, CA, United States, which is subject to United States Law, and on a server in Eygelshoven, Netherlands which is subject to The Netherlands Law. Our sites hosted on our
		whatevertinfoil.de domain operate on a server in Germany, and are subject to German Law.
		<br />
		<br />
		View the "Personal Data" section of this policy and our
		<a class="link" href="https://whatever.social/transparency" target="_blank"
			>Transparency Report</a
		>.
	</p>
	<br />
	<br />
	<h2>🤝 Third-parties providing Technical Services</h2>
	<br />
	<h3>NOC.org</h3>
	<p>
		We rely on NOC.org to provide us with DDoS protection, CDN delivery and certain other web
		services. NOC.org is not used on services on our whatevertinfoil.de domain. View <a
			class="link"
			href="https://noc.org/privacy/"
			target="_blank">NOC.org's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<h3>Backblaze</h3>
	<p>
		We rely on Backblaze for data backups. Each backup is retained for 14 days. Backblaze is not used on services on our whatevertinfoil.de domain. View <a
			class="link"
			href="https://www.backblaze.com/company/privacy.html"
			target="_blank">Backblazes's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<h3>Kavin.rocks</h3>
	<p>
		On https://watch.whatever.social and https://watch.whatevertinfoil.de, fonts may be loaded from
		https://fonts.kavin.rocks, which operates via Cloudflare Workers.
	</p>
	<br />
	<h3>Session</h3>
	<p>
		We use Session as one of the methods for contacting us. View <a
			class="link"
			href="https://getsession.org/privacy-policy"
			target="_blank">Session's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<h3>Proton</h3>
	<p>
		We use Proton to receive and store your e-mails sent to us. View <a
			class="link"
			href="https://proton.me/legal/privacy"
			target="_blank">Proton's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<h3>SimpleLogin</h3>
	<p>
		We use SimpleLogin to relay your e-mails sent to our whatever.social domain. View <a
			class="link"
			href="https://simplelogin.io/privacy/"
			target="_blank">SimpleLogin's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<br />
	<h2>💵 Third-parties providing Payment Services</h2>
	<br />
	<h3>Liberapay</h3>
	<br />
	<p>
		We rely on Liberapay to handle your payments to us when this method is chosen. We do NOT receive
		any of your personal information, such as Name, Payment Information, and etc. View <a
			class="link"
			href="https://en.liberapay.com/about/privacy"
			target="_blank">Liberapay's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<h3>Cake Wallet</h3>
	<p>
		If Monero is your chosen method of payment, we rely on Cake Wallet to receive your payment. View <a
			class="link"
			href="https://raw.githubusercontent.com/cake-tech/cake_wallet/main/PRIVACY.md"
			target="_blank">Cake Wallet's Privacy Policy</a
		> to learn more.
	</p>
	<br />
	<br />
	<h2>🔐 Data Security and Integrity</h2>
	<p>
		We take the steps that we deem reasonable to protect your data from unauthorized access and
		distribution, and from loss of data. For example, we use SSL/TLS to transmit data to you in an
		encrypted format, and provided passwords are hashed for the services that require user accounts.
	</p>
	<br />
	<br />
	<h2>🗑️ When you Delete your Account</h2>
	<p>
		On the services that you can delete your user account, database backups will continue to hold
		your information for up to 30 days.
	</p>
	<br />
	<br />
	<h2>⛔️ Children's Data</h2>
	<p>
		We do not knowingly collect personal information from anyone under 13 years of age. If you are
		aware of someone under the age of 13 using our services, please report them to <a
			class="link"
			href="mailto:privacy@whatever.social"
			target="_blank">privacy@whatever.social</a
		>
		(PGP Public Key <a class="link" href="https://whatever.social/email" target="_blank">here</a>).
		If we are able to find any information relating to that person, it will be removed.
	</p>
	<br />
	<br />
	<h2>📨 Contact Us</h2>
	<p>
		If you have questions or feedback regarding this policy, feel free to e-mail us at <a
			class="link"
			href="mailto:privacy@whatever.social"
			target="_blank">privacy@whatever.social</a
		>
		(PGP Public Key <a class="link" href="https://whatever.social/email" target="_blank">here</a>).
	</p>
	<br />
	<br />
	<h2>📝 Changes to this Policy</h2>
	<p>
		This privacy policy may be subject to changes in the future. Changes to this policy will be
		marked by the provided date of change.
	</p>
	<br />
	<br />
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
