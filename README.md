# codeigniter-container-image

The small framework with powerful features.

- Read the documentation and more at https://codeigniter.com/user_guide/index.html
- Open Docker Hub at https://hub.docker.com/r/eresseel/codeignier

## Available Docker image versions

| Docker tag | Ubuntu from   | PHP from   | CodeIgniter from                  |
| ---------- | ------------- | ---------- | --------------------------------- |
| `latest`   | Alpine latest | PHP 8.0.22 | Latest stable CodeIgniter version |
| `v4.2.6`   | Alpine 3.16.2 | PHP 8.0.22 | CodeIgniter 4 version             |

# Docker run command

```bash
docker run --name ci -d -p 8080:8080 --env UID=$(id -u) --env GUID=$(id -g) -v ${PWD}/ci-project:/app eresseel/codeignier:latest
```