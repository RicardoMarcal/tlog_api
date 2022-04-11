defmodule TlogApi.Repo do
  use Ecto.Repo,
    otp_app: :tlog_api,
    adapter: Ecto.Adapters.Postgres
end
