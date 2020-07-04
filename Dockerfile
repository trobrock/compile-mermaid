FROM buildkite/puppeteer

RUN apt-get update && apt-get install make

WORKDIR /mmdc
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY puppeteer-config.json ./
COPY Makefile ./

WORKDIR /action
ENTRYPOINT [ "make", "-f", "/mmdc/Makefile" ]
CMD [ "clean", "diagrams" ]
