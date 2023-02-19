# This site (not including privacy policy) is outdated, and will be replaced by the upcoming redesign.
There's no timeline as we're balancing other stuff IRL, but it'll come very soon


# whatever.social-launchpad

The homepage and launchpad for whatever.social listing all available instances.

## Developing

Install node:

```bash
apt install npm
```

Install yarn:

```bash
npm i -g yarn
```

Install the dependencies:

```bash
yarn
```

Run the development server:

```bash
yarn dev
```

## Building

To create a production version of this app:

```bash
yarn build
```

You can preview the production build with `yarn preview`.

## Deploying

The preferred and supported method of deploying is through Docker.

Install Docker using the [documentation](https://docs.docker.com/get-docker/).

Git clone the repository to your production server.

```bash
git clone https://github.com/httpjamesm/whatever.social-launchpad.git
```

Create your docker-compose.override.yml file and configure it to match your environment.

```bash
cp docker-compose.yml docker-compose.override.yml
```

Build and bring the docker container up.

```bash
docker compose -f docker-compose.override.yml up -d
```
