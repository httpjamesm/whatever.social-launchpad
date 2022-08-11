<script lang="ts">
	import { browser } from '$app/env';

	import { onMount } from 'svelte';

	export let name: string;
	export let desc: string;
	export let iconUrl: string;
	export let url: string;
	export let src: string = '';
	export let statusId: string;

	let status = 'pending';

	const fetchStatus = async () => {
		const request = await fetch(`https://statusapi.whatever.social/${statusId}`);

		const response: {
			success: boolean;
			data: boolean;
		} = await request.json();

		if (response.success) {
			status = response.data ? 'up' : 'down';
		}
	};

	onMount(() => {
		if (browser) {
			fetchStatus();
		}
	});
</script>

<div class="container">
	<div class="child">
		<img src={iconUrl} alt={`Logo for ${name} service`} class="icon" />
		<div class="text">
			<div class="name">
				<h3>{name}</h3>
				<div class="status {status}">{status.toUpperCase()}</div>
			</div>
			<p>{desc}</p>
		</div>
	</div>
	<div class="buttons">
		<div class="group">
			{#if src}
				<a href={src} target="_blank" rel="noopener noreferrer">
					<button class="src">Source</button>
				</a>
			{/if}
			<a href={url} target="_blank" rel="noopener noreferrer" class="button">
				<button class="go">Go</button>
			</a>
		</div>
	</div>
</div>

<style lang="scss">
	.container {
		.child {
			display: flex;
		}

		width: 20rem;
		height: fit-content;
		padding: 0.5rem;
		/* box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); */
		border-radius: 10px;

		.icon {
			height: 5rem;
			width: 5rem;
			border-radius: 10px;
		}

		.text {
			padding: 0.5rem;

			.name {
				display: flex;
				gap: 0.5rem;
			}

			.status {
				width: fit-content;
				height: 1.5rem;
				padding-left: 0.25rem;
				padding-right: 0.25rem;
				border-radius: 5px;
				display: flex;
				justify-content: center;
				align-items: center;
				color: black;
                font-weight: bold;
                font-size: .5rem;
			}

			.status.up {
				background-color: #a4ffa4;
			}

			.status.down {
				background-color: #ffa4a4;
			}

			.status.pending {
				background-color: #ffffa4;
			}

			p {
				margin: 0;
			}
		}

		.buttons {
			display: flex;
			justify-content: flex-end;

			.group {
				button {
					margin-left: 0.5rem;
					cursor: pointer;

					transition-duration: 100ms;

					&:hover {
						filter: brightness(85%);
					}

					&:active {
						filter: brightness(50%);
					}
				}

				display: flex;

				.src {
					background-color: var(--fg);
					color: var(--bg);
					height: 2rem;
					width: 4rem;
					border: none;
					border-radius: 5px;
					font-family: Figtree, sans-serif;
					font-weight: bold;
				}

				.go {
					height: 2rem;
					width: 4rem;
					background-color: var(--underline);
					color: white;
					border: none;
					border-radius: 5px;
					font-family: Figtree, sans-serif;
					font-weight: bold;
				}
			}
		}
	}
</style>
