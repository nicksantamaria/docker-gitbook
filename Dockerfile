ARG BASE_IMAGE=alpine
FROM node:$BASE_IMAGE

# Install gitbook.
RUN npm install --global gitbook-cli \
        && gitbook fetch ${VERSION} \
        && npm cache verify \
        && rm -rf /tmp/*

WORKDIR /data

# Set mkdocs as the entrypoint for convenience.
ENTRYPOINT ["gitbook"]

# Expose default ports for gitbook serve and livereload.
EXPOSE 4000 35729
