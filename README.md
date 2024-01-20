# Refden Web Dockerfile

Dockerfile for running tests on Bitbucket Pipelines for a Rails app.

https://hub.docker.com/r/mapreal19/refden-ci

## Upgrade instructions

1. Build your image:

- `docker build -t mapreal19/refden-ci .` 
- Use `--no-cache` for updating deps: `docker build -t mapreal19/refden-ci --no-cache --platform linux/amd64 .`

2. Push to DockerHub:

- `docker push mapreal19/refden-ci`

## Test in local
`docker run -i -t -v <local_directoy_of_your_rails_app>:<directory_on_docker> mapreal19/refden-ci /bin/bash`

## Troubleshooting

- https://stackoverflow.com/questions/50642308/org-openqa-selenium-webdriverexception-unknown-error-devtoolsactiveport-file-d/50642913
