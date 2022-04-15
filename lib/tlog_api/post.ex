defmodule TlogApi.Post do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @fields [:title, :slug, :image, :description, :author_name, :author_image]

  schema "posts" do
    field :title, :string
    field :slug, :string
    field :image, :string
    field :description, :string
    field :author_name, :string
    field :author_image, :string

    timestamps()
  end

  # Changeset + Data Validation
  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:password, min: 6)
    |> validate_length(:name, min: 2)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint([:email])
  end
end
