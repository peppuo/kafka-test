FROM gitpod/workspace-full:latest

# Use root user
USER root
RUN apt-get update && apt-get install -y \
    # Setup Kafka
    && curl https://ftp.heanet.ie/mirrors/www.apache.org/dist/kafka/2.6.0/kafka_2.13-2.6.0.tgz | tar -xzf \
    # Clean-up
    && sudo apt-get clean \
    && sudo rm -rf /var/cache/apt/* /var/lib/apt/lists/* /tmp/*


# Local environment variables
ENV DEVELOPMENT="true"
ENV IP="0.0.0.0"
ENV GP_HOSTNAME="localhost"
ENV PORT="8080"
