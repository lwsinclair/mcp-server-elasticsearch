FROM cgr.dev/chainguard/wolfi-base:latest@sha256:08a4c4fc8583c217c853fda751f08495530d105c361b714f6d33ae3edb5ec11c

RUN apk --no-cache add nodejs npm

WORKDIR /app
COPY . ./
RUN npm install && npm run build

ENTRYPOINT ["npm", "start"]
