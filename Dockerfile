FROM node:12-alpine3.15
COPY entrypoint.sh /entrypoint.sh
RUN apk update && apk add bash git curl jq && npm install -g semver
ENTRYPOINT ["/entrypoint.sh"]