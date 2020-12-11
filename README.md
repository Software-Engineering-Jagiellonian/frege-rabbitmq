# Frege RabbitMQ Server Instance - for testing
This repository contains a docker image definition of RabbitMQ server configured like production server will be (I hope).

Server has a limit of 3 messages per queue and created queues with `durable` option enabled!

If you create a queue on your own in a code (recommended by RabbitMQ tutorial) you must also mark it as a `durable`.
In other case you will get an exception.

## How to run
Just simply type a `docker run --hostname rabbit --name rabbit jagiellonian/frege-rabbitmq`.

`--hostname rabbit` is very important if you wan to save your queue states.
In other case docker give rabbit a random host name but rabbit store its data based on a host name, so queues will be empty on the next run.

`--name rabbit` can be useful to name a container in a stable and easy to remember and type way.
If you wan to run your RabbitMQ instance again, then simpy type a `docker start rabbit`.

To use your RabbitMQ instance you must know it's IP address. To check it run `docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' rabbit`.

## How to manage
RabbitMQ has a web management interface exposed on a port `15672`, so you must visit `<rabbitmq container ip address>:15672` in your web browser.
