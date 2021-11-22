FROM rust:1.56.1 as builder
WORKDIR /usr/src/rust-app
COPY ./Cargo.toml Cargo.toml
COPY ./Cargo.lock Cargo.lock
COPY ./src src
RUN cargo install --path .

FROM debian:buster-slim
COPY --from=builder /usr/local/cargo/bin/rust-app /usr/local/bin/rust-app
ENV ROCKET_ADDRESS=0.0.0.0
EXPOSE 8000
CMD ["rust-app"]
