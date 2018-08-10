# Refden Web Dockerfile

Dockerfile for running tests on Bitbucket Pipelines for a Rails app

## Upgrade instructions

`docker build -t mapreal19/refden-ci .` (Use `-no--cache?` if want to build the image from scratch)

`docker push mapreal19/refden-ci`

## Test in local
`docker run -i -t -v <local_directory_of_your_rails_app>:<directory_on_docker> mapreal19/refden-ci /bin/bash`


## Troubleshooting

- https://stackoverflow.com/questions/50642308/org-openqa-selenium-webdriverexception-unknown-error-devtoolsactiveport-file-d/50642913
