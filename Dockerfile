FROM rabbitmq:3-management

COPY definitions.json /etc/rabbitmq/
RUN echo "load_definitions = /etc/rabbitmq/definitions.json" >> /etc/rabbitmq/rabbitmq.conf && \
    echo "loopback_users = none" >> /etc/rabbitmq/rabbitmq.conf
