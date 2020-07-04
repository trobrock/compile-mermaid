FROM node:12-alpine

WORKDIR /action

RUN npm install @mermaid-js/mermaid-cli

COPY Makefile ./

ENTRYPOINT [ "make" ]
CMD [ "clean", "diagrams" ]
