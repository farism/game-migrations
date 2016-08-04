FROM elixir:1.3.2
RUN mkdir -p /user/src/app
COPY . /user/src/app
WORKDIR /user/src/app
RUN mix local.hex --force
RUN mix deps.get
RUN mix compile
CMD ["mix", "ecto.migrate"]
