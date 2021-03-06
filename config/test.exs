use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :hw06, Hw06Web.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :hw06, Hw06.Repo,
  username: "hw06",
  password: "eiy2thaiMae5",
  database: "hw06_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
