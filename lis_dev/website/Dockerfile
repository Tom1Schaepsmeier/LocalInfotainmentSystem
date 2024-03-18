FROM nimlang/nim:2.0.2-alpine-regular as nim

LABEL maintainer="tom.schaepsmeier@gmail.com"

WORKDIR /src/lis

COPY lis.nimble .

RUN nimble install -y --depsOnly

COPY . .
RUN nimble build -d:debug -d:lto

FROM alpine:3.19.1
WORKDIR /lis

COPY --from=nim /src/lis/lis ./

EXPOSE 2112
RUN adduser -h /lis/ -D -s /bin/sh lis

USER lis
CMD ./lis