FROM node:12

WORKDIR /mmdc
COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY Makefile ./

WORKDIR /action
ENTRYPOINT [ "make", "-f", "/mmdc/Makefile" ]
CMD [ "clean", "diagrams" ]
