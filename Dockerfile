FROM cypress/browsers:chrome63

ENV npm_config_loglevel=warn

RUN npm install cypress@1.4.1
RUN node_modules/.bin/cypress verify
RUN node_modules/.bin/cypress --version

CMD ["node_modules/.bin/cypress", "run"]
