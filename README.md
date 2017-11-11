# es-training-api
### Setup
This application needs Docker to setup its environment and dependencies. You can install it from here https://www.docker.com/get-docker

*If you're on Linux, add sudo at the beggining of every single command.*

1. Assuming you already have Docker installed on your computer, run the following command to build the environment (it might take some minutes):
```
docker-compose build
```

2. After docker configures the environment, you can now run the following command to start both the Database and the Ruby app:
```
docker compose up
```

### Creating database on the Docker container

1. First, we need to get inside our Docker container

If you're on linux, you can simply run:
```
chmod +x bash.sh && ./bash.sh
```
Otherwise, you'll need to run:
```
docker exec -it es_web_1 bash
```

Then, you're going to create the db:
```
rake db:create
```
And run all migrations:
```
rake db:migrate
```

#### You're done! The app is running.