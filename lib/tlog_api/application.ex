defmodule TlogApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      TlogApi.Repo,
      # Start the Telemetry supervisor
      TlogApiWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: TlogApi.PubSub},
      # Start the Endpoint (http/https)
      TlogApiWeb.Endpoint
      # Start a worker by calling: TlogApi.Worker.start_link(arg)
      # {TlogApi.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: TlogApi.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    TlogApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
