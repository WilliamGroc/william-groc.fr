<script lang="ts">
	// Calcul automatique de l'expérience depuis février 2016
	const startDate = new Date(2016, 1); // Février 2016 (mois 1 car index 0)
	const now = new Date();
	const yearsDiff = now.getFullYear() - startDate.getFullYear();
	const monthsDiff = now.getMonth() - startDate.getMonth();
	const yearsExperience = monthsDiff < 0 ? yearsDiff - 1 : yearsDiff;

	const skills = {
		frontend: ['React', 'React Native', 'Angular', 'Svelte'],
		backend: ['Node.js', 'Express', 'NestJS', 'Java', 'Spring Boot', 'Golang'],
		cloud: ['AWS', 'Azure', 'GCP']
	};

	const experience = [
		{
			company: 'Sogeti (Capgemini)',
			period: "2021 - Aujourd'hui",
			role: 'Lead Développeur Fullstack',
			description: "Après le rachat d'Altran par Capgemini"
		},
		{
			company: 'Altran',
			period: 'Février 2016 - 2021',
			role: 'Développeur Fullstack',
			description: 'Début de carrière'
		}
	];

	const activities = [
		'Développement web avec expertise des technologies modernes',
		"Gestion d'équipe sur le plan technique",
		'Entretiens techniques',
		'Architecture logicielle pour les avant-ventes'
	];

	const sectors = ['Aéronautique', 'Bancaire', 'Pharmaceutique'];

	const portfolio = [
		{
			name: 'Oniway',
			url: 'https://www.oniway.app',
			description: 'Application web moderne',
			tags: ['Web', 'Fullstack']
		},
		{
			name: 'Calcul Prêt',
			url: 'https://www.calcul-pret.com',
			description: 'Calculateur de prêt en ligne',
			tags: ['Web', 'Finance']
		}
	];

	const contact = {
		email: 'william.groc@gmail.com',
		github: 'https://github.com/WilliamGroc?tab=repositories'
	};
</script>

<div class="relative min-h-screen overflow-hidden bg-black">
	<!-- Animated Grid Background -->
	<div class="grid-background"></div>
	<div class="scan-line"></div>

	<!-- Hero Section -->
	<section class="relative z-10 container mx-auto px-4 py-20">
		<div class="mx-auto max-w-4xl">
			<div class="terminal-window">
				<div class="terminal-header">
					<div class="flex gap-2">
						<div class="h-3 w-3 rounded-full bg-red-500"></div>
						<div class="h-3 w-3 rounded-full bg-yellow-500"></div>
						<div class="h-3 w-3 rounded-full bg-green-500"></div>
					</div>
					<span class="text-xs text-slate-400">william-groc.profile</span>
					<div></div>
				</div>
				<div class="terminal-body">
					<div class="mb-4 flex items-center gap-2 font-mono text-sm text-emerald-400">
						<span class="animate-pulse">▶</span>
						<span>cat profile.json</span>
					</div>
					<h1 class="animate-fade-in mb-6 font-mono text-4xl font-bold text-cyan-400 md:text-5xl">
						<span class="text-slate-500">{'{'}</span>
						<br />
						<span class="ml-4 text-white">"name":</span>
						<span class="text-emerald-400">"William Groc"</span>
						<br />
						<span class="text-slate-500">{'}'}</span>
					</h1>
					<p class="mb-2 font-mono text-xl text-purple-400 md:text-2xl">
						<span class="text-slate-500">→</span> Lead Développeur Fullstack
					</p>
					<p class="mb-8 font-mono text-lg text-blue-400">
						<span class="text-slate-500">#</span> Architecte L1 Capgemini
					</p>
					<div class="mb-6 flex flex-wrap gap-3">
						<span class="code-badge border-emerald-500/30 bg-emerald-500/10 text-emerald-400">
							<span class="opacity-50">$</span> experience: {yearsExperience}+ years
						</span>
						<span class="code-badge border-cyan-500/30 bg-cyan-500/10 text-cyan-400">
							<span class="opacity-50">@</span> Sogeti / Capgemini
						</span>
					</div>
					<a
						href={contact.github}
						target="_blank"
						rel="noopener noreferrer"
						class="inline-flex items-center gap-2 rounded border border-slate-600 bg-slate-800/50 px-4 py-2 font-mono text-sm text-slate-300 transition-all hover:border-purple-500/50 hover:bg-slate-700/50 hover:text-white"
					>
						<svg class="h-5 w-5" fill="currentColor" viewBox="0 0 24 24">
							<path
								fill-rule="evenodd"
								d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
								clip-rule="evenodd"
							/>
						</svg>
						<span>github.com/WilliamGroc</span>
						<svg
							class="h-4 w-4 transition-transform group-hover:translate-x-1"
							fill="none"
							stroke="currentColor"
							viewBox="0 0 24 24"
						>
							<path
								stroke-linecap="round"
								stroke-linejoin="round"
								stroke-width="2"
								d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"
							/>
						</svg>
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Skills Section -->
	<section class="relative z-10 container mx-auto px-4 py-16">
		<div class="mx-auto max-w-6xl">
			<h2 class="mb-3 text-center font-mono text-sm text-emerald-400">
				<span class="animate-pulse">▶</span> ./skills --list-all
			</h2>
			<h2 class="mb-12 text-center text-3xl font-bold text-white">Stack Technique</h2>

			<div class="grid gap-6 md:grid-cols-3">
				<!-- Frontend -->
				<div class="tech-card group">
					<div class="tech-card-glow bg-blue-500"></div>
					<div class="tech-card-content">
						<div class="mb-4 flex items-center gap-3">
							<div class="tech-icon bg-blue-500/20">
								<svg
									class="h-5 w-5 text-blue-400"
									fill="none"
									stroke="currentColor"
									viewBox="0 0 24 24"
								>
									<path
										stroke-linecap="round"
										stroke-linejoin="round"
										stroke-width="2"
										d="M10 20l4-16m4 4l4 4-4 4M6 16l-4-4 4-4"
									/>
								</svg>
							</div>
							<h3 class="font-mono text-lg font-semibold text-blue-400">Frontend</h3>
						</div>
						<div class="flex flex-wrap gap-2">
							{#each skills.frontend as skill}
								<span class="skill-tag border-blue-500/30 bg-blue-500/10 text-blue-300">
									{skill}
								</span>
							{/each}
						</div>
					</div>
				</div>

				<!-- Backend -->
				<div class="tech-card group">
					<div class="tech-card-glow bg-green-500"></div>
					<div class="tech-card-content">
						<div class="mb-4 flex items-center gap-3">
							<div class="tech-icon bg-green-500/20">
								<svg
									class="h-5 w-5 text-green-400"
									fill="none"
									stroke="currentColor"
									viewBox="0 0 24 24"
								>
									<path
										stroke-linecap="round"
										stroke-linejoin="round"
										stroke-width="2"
										d="M5 12h14M5 12a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v4a2 2 0 01-2 2M5 12a2 2 0 00-2 2v4a2 2 0 002 2h14a2 2 0 002-2v-4a2 2 0 00-2-2m-2-4h.01M17 16h.01"
									/>
								</svg>
							</div>
							<h3 class="font-mono text-lg font-semibold text-green-400">Backend</h3>
						</div>
						<div class="flex flex-wrap gap-2">
							{#each skills.backend as skill}
								<span class="skill-tag border-green-500/30 bg-green-500/10 text-green-300">
									{skill}
								</span>
							{/each}
						</div>
					</div>
				</div>

				<!-- Cloud -->
				<div class="tech-card group">
					<div class="tech-card-glow bg-purple-500"></div>
					<div class="tech-card-content">
						<div class="mb-4 flex items-center gap-3">
							<div class="tech-icon bg-purple-500/20">
								<svg
									class="h-5 w-5 text-purple-400"
									fill="none"
									stroke="currentColor"
									viewBox="0 0 24 24"
								>
									<path
										stroke-linecap="round"
										stroke-linejoin="round"
										stroke-width="2"
										d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"
									/>
								</svg>
							</div>
							<h3 class="font-mono text-lg font-semibold text-purple-400">Cloud</h3>
						</div>
						<div class="flex flex-wrap gap-2">
							{#each skills.cloud as skill}
								<span class="skill-tag border-purple-500/30 bg-purple-500/10 text-purple-300">
									{skill}
								</span>
							{/each}
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Experience Section -->
	<section class="relative z-10 container mx-auto px-4 py-16">
		<div class="mx-auto max-w-4xl">
			<h2 class="mb-3 text-center font-mono text-sm text-emerald-400">
				<span class="animate-pulse">▶</span> git log --experience
			</h2>
			<h2 class="mb-12 text-center text-3xl font-bold text-white">Timeline</h2>

			<div class="space-y-6">
				{#each experience as exp, i}
					<div class="experience-card group">
						<div class="experience-timeline">
							<div class="timeline-dot"></div>
							{#if i < experience.length - 1}
								<div class="timeline-line"></div>
							{/if}
						</div>
						<div class="experience-content">
							<div class="mb-3 flex flex-col gap-3 md:flex-row md:items-center md:justify-between">
								<h3 class="font-mono text-xl font-semibold text-cyan-400">{exp.company}</h3>
								<span class="font-mono text-sm text-emerald-400">
									<span class="text-slate-500">[</span>{exp.period}<span class="text-slate-500"
										>]</span
									>
								</span>
							</div>
							<p class="mb-2 font-mono text-base text-purple-400">{exp.role}</p>
							<p class="font-mono text-sm text-slate-400">
								<span class="text-slate-500">//</span>
								{exp.description}
							</p>
						</div>
					</div>
				{/each}
			</div>
		</div>
	</section>

	<!-- Activities Section -->
	<section class="relative z-10 container mx-auto px-4 py-16">
		<div class="mx-auto max-w-4xl">
			<h2 class="mb-3 text-center font-mono text-sm text-emerald-400">
				<span class="animate-pulse">▶</span> ./activities.sh
			</h2>
			<h2 class="mb-12 text-center text-3xl font-bold text-white">Domaines d'Expertise</h2>

			<div class="grid gap-4 md:grid-cols-2">
				{#each activities as activity, i}
					<div class="activity-card group">
						<div class="flex items-start gap-4">
							<span class="font-mono text-sm text-emerald-400">[{i + 1}]</span>
							<p class="font-mono text-sm leading-relaxed text-slate-300">{activity}</p>
						</div>
					</div>
				{/each}
			</div>
		</div>
	</section>

	<!-- Certification & Sectors Section -->
	<section class="relative z-10 container mx-auto px-4 py-16">
		<div class="mx-auto max-w-4xl">
			<div class="grid gap-6 md:grid-cols-2">
				<!-- Certification -->
				<div class="certification-card">
					<div class="cert-badge">
						<svg class="h-8 w-8 text-yellow-400" fill="currentColor" viewBox="0 0 20 20">
							<path
								d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"
							/>
						</svg>
					</div>
					<div>
						<h3 class="mb-2 font-mono text-sm text-slate-400">CERTIFICATION</h3>
						<p class="mb-1 font-mono text-lg font-semibold text-yellow-400">Architecte L1</p>
						<p class="font-mono text-sm text-slate-500">// Capgemini</p>
					</div>
				</div>

				<!-- Sectors -->
				<div class="sectors-card">
					<h3 class="mb-4 font-mono text-sm text-slate-400">SECTEURS</h3>
					<div class="flex flex-wrap gap-2">
						{#each sectors as sector}
							<span class="sector-tag">
								<span class="text-emerald-400">→</span>
								{sector}
							</span>
						{/each}
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Portfolio Section -->
	<section class="relative z-10 container mx-auto px-4 py-16">
		<div class="mx-auto max-w-4xl">
			<h2 class="mb-3 text-center font-mono text-sm text-emerald-400">
				<span class="animate-pulse">▶</span> npm run projects --public
			</h2>
			<h2 class="mb-12 text-center text-3xl font-bold text-white">Applications Live</h2>

			<div class="grid gap-6 md:grid-cols-2">
				{#each portfolio as project}
					<a
						href={project.url}
						target="_blank"
						rel="noopener noreferrer"
						class="project-card group"
					>
						<div class="project-glow"></div>
						<div class="project-content">
							<div class="mb-4 flex items-start justify-between">
								<h3
									class="font-mono text-xl font-semibold text-cyan-400 transition-colors group-hover:text-emerald-400"
								>
									{project.name}
								</h3>
								<svg
									class="h-5 w-5 text-slate-500 transition-all group-hover:translate-x-1 group-hover:text-emerald-400"
									fill="none"
									stroke="currentColor"
									viewBox="0 0 24 24"
								>
									<path
										stroke-linecap="round"
										stroke-linejoin="round"
										stroke-width="2"
										d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"
									/>
								</svg>
							</div>
							<p class="mb-4 font-mono text-sm text-slate-400">
								<span class="text-slate-600">//</span>
								{project.description}
							</p>
							<div class="mb-4 flex flex-wrap gap-2">
								{#each project.tags as tag}
									<span class="inline-flex items-center gap-1 font-mono text-xs text-blue-400">
										<span class="text-slate-600">#</span>{tag}
									</span>
								{/each}
							</div>
							<p
								class="font-mono text-xs text-slate-600 transition-colors group-hover:text-slate-500"
							>
								{project.url}
							</p>
						</div>
					</a>
				{/each}
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section class="relative z-10 container mx-auto px-4 py-16 pb-24">
		<div class="mx-auto max-w-4xl">
			<h2 class="mb-3 text-center font-mono text-sm text-emerald-400">
				<span class="animate-pulse">▶</span> ./contact.sh
			</h2>
			<h2 class="mb-12 text-center text-3xl font-bold text-white">Connexion</h2>

			<div class="contact-card">
				<div class="contact-header">
					<span class="font-mono text-xs text-slate-500">#!/bin/bash</span>
				</div>
				<p class="mb-6 font-mono text-sm text-slate-400">
					<span class="text-slate-600">#</span> Intéressé par une collaboration ?
				</p>
				<a href="mailto:{contact.email}" class="contact-button group">
					<span class="text-slate-500">$</span>
					<span class="font-mono">send_mail --to</span>
					<span class="text-emerald-400">{contact.email}</span>
					<svg
						class="h-5 w-5 text-emerald-400 transition-transform group-hover:translate-x-1"
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
					>
						<path
							stroke-linecap="round"
							stroke-linejoin="round"
							stroke-width="2"
							d="M14 5l7 7m0 0l-7 7m7-7H3"
						/>
					</svg>
				</a>
			</div>
		</div>
	</section>
</div>

<style>
	@keyframes fade-in {
		from {
			opacity: 0;
			transform: translateY(20px);
		}
		to {
			opacity: 1;
			transform: translateY(0);
		}
	}

	@keyframes scan {
		0% {
			top: -100%;
		}
		100% {
			top: 100%;
		}
	}

	@keyframes grid-move {
		0% {
			transform: translateY(0);
		}
		100% {
			transform: translateY(50px);
		}
	}

	.animate-fade-in {
		animation: fade-in 1s ease-out;
	}

	/* Grid Background */
	.grid-background {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		background-image:
			linear-gradient(rgba(6, 182, 212, 0.1) 1px, transparent 1px),
			linear-gradient(90deg, rgba(6, 182, 212, 0.1) 1px, transparent 1px);
		background-size: 50px 50px;
		animation: grid-move 20s linear infinite;
		z-index: 0;
	}

	/* Scan Line Effect */
	.scan-line {
		position: fixed;
		left: 0;
		width: 100%;
		height: 2px;
		background: linear-gradient(90deg, transparent, rgba(16, 185, 129, 0.5), transparent);
		animation: scan 8s linear infinite;
		z-index: 1;
		pointer-events: none;
	}

	/* Terminal Window */
	.terminal-window {
		overflow: hidden;
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		backdrop-filter: blur(12px);
		box-shadow: 0 0 40px rgba(6, 182, 212, 0.15);
	}

	.terminal-header {
		display: flex;
		align-items: center;
		justify-content: space-between;
		border-bottom: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(15 23 42 / 0.8);
		padding: 0.75rem 1rem;
	}

	.terminal-body {
		padding: 2rem;
	}

	/* Code Badge */
	.code-badge {
		border-radius: 0.25rem;
		border-width: 1px;
		padding: 0.375rem 0.75rem;
		font-family: ui-monospace, monospace;
		font-size: 0.75rem;
		backdrop-filter: blur(12px);
	}

	/* Tech Cards */
	.tech-card {
		position: relative;
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		padding: 1.5rem;
		backdrop-filter: blur(12px);
		transition: all 300ms;
	}

	.tech-card:hover {
		border-color: rgb(71 85 105);
		transform: translateY(-4px);
	}

	.tech-card-glow {
		position: absolute;
		inset: -0.125rem;
		border-radius: 0.5rem;
		opacity: 0;
		filter: blur(24px);
		transition: opacity 300ms;
	}

	.tech-card:hover .tech-card-glow {
		opacity: 0.2;
	}

	.tech-card-content {
		position: relative;
		z-index: 10;
	}

	.tech-icon {
		display: flex;
		height: 2.5rem;
		width: 2.5rem;
		align-items: center;
		justify-content: center;
		border-radius: 0.5rem;
		border: 1px solid currentColor;
		border-opacity: 0.3;
	}

	.skill-tag {
		border-radius: 0.25rem;
		border-width: 1px;
		padding: 0.25rem 0.625rem;
		font-family: ui-monospace, monospace;
		font-size: 0.75rem;
		backdrop-filter: blur(12px);
	}

	/* Experience Cards */
	.experience-card {
		position: relative;
		display: flex;
		gap: 1.5rem;
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		padding: 1.5rem;
		backdrop-filter: blur(12px);
		transition: all 300ms;
	}

	.experience-card:hover {
		border-color: rgb(6 182 212 / 0.3);
		box-shadow: 0 0 30px rgba(6, 182, 212, 0.1);
	}

	.experience-timeline {
		position: relative;
		display: flex;
		flex-direction: column;
		align-items: center;
	}

	.timeline-dot {
		height: 1rem;
		width: 1rem;
		border-radius: 9999px;
		border: 2px solid rgb(16 185 129);
		background-color: rgb(0 0 0);
		box-shadow: 0 0 10px rgba(16, 185, 129, 0.5);
	}

	.timeline-line {
		margin-top: 0.5rem;
		width: 0.125rem;
		flex: 1;
		background: linear-gradient(to bottom, rgb(16 185 129 / 0.5), transparent);
	}

	.experience-content {
		flex: 1;
	}

	/* Activity Cards */
	.activity-card {
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		padding: 1rem;
		backdrop-filter: blur(12px);
		transition: all 300ms;
	}

	.activity-card:hover {
		border-color: rgb(16 185 129 / 0.3);
		box-shadow: 0 0 20px rgba(16, 185, 129, 0.1);
	}

	/* Certification Card */
	.certification-card {
		display: flex;
		align-items: center;
		gap: 1rem;
		border-radius: 0.5rem;
		border: 1px solid rgb(234 179 8 / 0.3);
		background: linear-gradient(to bottom right, rgb(113 63 18 / 0.2), rgb(0 0 0 / 0.4));
		padding: 1.5rem;
		backdrop-filter: blur(12px);
		box-shadow: 0 0 30px rgba(234, 179, 8, 0.1);
	}

	.cert-badge {
		display: flex;
		height: 4rem;
		width: 4rem;
		align-items: center;
		justify-content: center;
		border-radius: 9999px;
		border: 1px solid rgb(250 204 21 / 0.3);
		background-color: rgb(234 179 8 / 0.1);
	}

	/* Sectors Card */
	.sectors-card {
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		padding: 1.5rem;
		backdrop-filter: blur(12px);
	}

	.sector-tag {
		border-radius: 0.25rem;
		border: 1px solid rgb(71 85 105);
		background-color: rgb(30 41 59 / 0.5);
		padding: 0.375rem 0.75rem;
		font-family: ui-monospace, monospace;
		font-size: 0.75rem;
		color: rgb(203 213 225);
	}

	/* Project Cards */
	.project-card {
		position: relative;
		display: block;
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		padding: 1.5rem;
		backdrop-filter: blur(12px);
		transition: all 300ms;
	}

	.project-card:hover {
		border-color: rgb(6 182 212 / 0.5);
		transform: translateY(-4px);
	}

	.project-glow {
		position: absolute;
		inset: -0.125rem;
		border-radius: 0.5rem;
		background: linear-gradient(to bottom right, rgb(6 182 212), rgb(16 185 129));
		opacity: 0;
		filter: blur(24px);
		transition: opacity 300ms;
	}

	.project-card:hover .project-glow {
		opacity: 0.2;
	}

	.project-content {
		position: relative;
		z-index: 10;
	}

	/* Contact Card */
	.contact-card {
		border-radius: 0.5rem;
		border: 1px solid rgb(51 65 85 / 0.5);
		background-color: rgb(0 0 0 / 0.4);
		padding: 2rem;
		backdrop-filter: blur(12px);
	}

	.contact-header {
		margin-bottom: 1rem;
		border-bottom: 1px solid rgb(51 65 85 / 0.3);
		padding-bottom: 0.75rem;
	}

	.contact-button {
		display: flex;
		align-items: center;
		justify-content: center;
		gap: 0.5rem;
		border-radius: 0.5rem;
		border: 1px solid rgb(16 185 129 / 0.5);
		background-color: rgb(16 185 129 / 0.1);
		padding: 1rem 1.5rem;
		font-family: ui-monospace, monospace;
		font-size: 0.875rem;
		color: white;
		transition: all 300ms;
	}

	.contact-button:hover {
		border-color: rgb(52 211 153);
		background-color: rgb(16 185 129 / 0.2);
		box-shadow: 0 0 30px rgba(16, 185, 129, 0.3);
	}
</style>
