FROM umids/d2s-sparql-operations:latest

LABEL maintainer "Vincent Emonet <vincent.emonet@gmail.com>"

COPY ./entrypoint.sh /entrypoint.sh

RUN chmod 755 /entrypoint.sh
RUN chmod 755 /app/d2s-sparql-operations.jar

ENTRYPOINT [ "/entrypoint.sh" ]