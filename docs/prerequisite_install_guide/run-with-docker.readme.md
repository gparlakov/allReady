# Using docker for running (and building) the AllReady web app
In order to lower the barrier to entry and make for a quick and easy start-up to AllReady for docker using developers: Here's what you need to do
1. Install [Docker](//www.docker.com/products/docker-desktop) and [GIT](./prerequisite_install_guide.md#git)
2. Clone source
3. Run `docker-compose up -d --build` in the `AllReadyApp` folder

Done! App is running as soon as SQL server and DotNetCore2.2 images get downloaded (it takes some time - SQL server is a couple of GB-s)

# To iterate on the app

1. Change a file (I recommend VS Code! for Dev Environment)
2. Run `docker-compose up -d --build` again :)

Step 2 could be automated by some kind of watcher. For example `chokidar-cli` node package [here](https://github.com/kimmobrunfeldt/chokidar-cli#usage):
```bash
npx chokidar-cli "**/*.*" -c "docker-compose up -d --build"
```
This will re-run the docker compose command every time a file is changed. Using npx means no permanent damage will be done to your system :) (i.e. nothing will get globally installed)
