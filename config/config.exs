import Config

config :tlog_api,
  ecto_repos: [TlogApi.Repo]

config :tlog_api, TlogApi.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]


# Configures the endpoint
config :tlog_api, TlogApiWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: TlogApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: TlogApi.PubSub,
  live_view: [signing_salt: "Xob4jUAE"]

config :tlog_api, TlogApi.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
