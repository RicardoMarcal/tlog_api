import Config

# Configure your database
config :tlog_api, TlogApi.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "tlog_api_dev",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

config :tlog_api, TlogApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  secret_key_base: "prviK4cU0hHU7cPk0M5Tr8r3rXhXt7KjMPROZnsXUu6WFixJaX+Uc7SX8jNZi0PZ",
  watchers: []

config :logger, :console, format: "[$level] $message\n"

config :phoenix, :stacktrace_depth, 20

# Initialize plugs at runtime for faster development compilation
config :phoenix, :plug_init_mode, :runtime
