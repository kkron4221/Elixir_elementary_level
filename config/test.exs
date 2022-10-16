import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :modest_greeter, ModestGreeterWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "FLfJj0hSFz11HnB1alUy1ifQxMU8kYJWQcgOHEIHBuPKADCjAo18CJIrjn/Ky6KZ",
  server: false

# In test we don't send emails.
config :modest_greeter, ModestGreeter.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
