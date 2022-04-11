defmodule TlogApi.Users.Create do
  alias TlogApi.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
