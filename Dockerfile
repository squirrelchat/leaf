FROM rust:1.50-alpine AS build
RUN apk add build-base

WORKDIR /opt/leaf
COPY . /opt/leaf

RUN cargo build --release
RUN strip ./target/release/leaf

FROM alpine:latest

WORKDIR /usr/src/leaf
COPY --from=build /opt/leaf/target/release/leaf /usr/src/leaf/leaf

CMD [ "leaf" ]

EXPOSE 3030
