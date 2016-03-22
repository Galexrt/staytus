# Staytus

Staytus is a complete solution for publishing the latest information about
any issues with your web applications, networks or services. Along with
absolutely beautiful public & admin interfaces, Staytus is a powerful tool for
any organization with customers that rely on them to be online 24/7.

* [Check out the live demo](http://demo.staytus.co)
* [Read the roadmap](https://github.com/adamcooke/staytus/blob/master/ROADMAP.md)
* [Report a bug](https://github.com/adamcooke/staytus/issues/new?labels=bug)
* [Ask a question](https://github.com/adamcooke/staytus/issues/new?labels=question)

![Screenshot](https://s.adamcooke.io/15/iOzvtk.png)

## Setup with Docker

1. [Install Docker locally](https://docs.docker.com/installation/)
2. [Install docker-compose locally](https://docs.docker.com/installation/)
3. Now run `docker-compose -d up`, to start Staytus with the database container (You have to be in the directory of your Staytus `docker-compose.yml` for this).
4. Go to [http://localhost:80](http://localhost:80) and follow the instructions to configure Staytus

This will pull and start the latest published Staytus Docker image and the database image, and start it listening on port 80 on the host machine.

### Upgrading with Docker

When a new Staytus Docker image is published that you'd like to upgrade to:

1. Stop your current Staytus and database container with `docker-compose stop`
2. Pull the latest Staytus image using `docker pull adamcooke/staytus``
4. Start your Staytus instance again with `docker-compose -d up` (You have to be in the directory of your Staytus `docker-compose.yml` for this).

This will automatically migrate your DB to pick up any new changes, and bring in any new code changes from the Staytus code.
