# Servers

This compose is meant to help up a simplified software factory setup on a linux vm.

Be sure to inspect and understand all tradeoffs before using it.

Some decisions compromise security making this setup not useable in a productive environment.

The use should be limited to isolated systems.

# up.sh

Replaces group information and handles the startup.

# docker-compose

The docker compose file is based off version 2.1 since the group_add has been deprecated in later versions.

## Jenkins

Features a mount to preserve content during restarts ```jenkins_home:/var/jenkins_home```, features a docker cli to ensure compatibility to underlying docker engine ```/usr/bin/docker:/usr/bin/docker```, features a docker socket to ensure usage of underlying docker engine 
```/var/run/docker.sock:/var/run/docker.sock```

## SonarQube

SonarQube comes with an elasticsearch so the basic recommendations for that apply as can be read [here](https://hub.docker.com/_/sonarqube).


## Tomcat

The tomcat implementation follows the layout provided [here](https://octopus.com/blog/deployable-tomcat-docker-containers#define-a-user).

This whole setup is meant for limited demos, so it does not persist the applications during restarts.

## Nexus

also nexus

## nginx

nginx is configured with info found [here](https://www.domysee.com/blogposts/reverse-proxy-nginx-docker-compose) and [here](http://nginx.org/en/docs/http/ngx_http_core_module.html#client_max_body_size) .
