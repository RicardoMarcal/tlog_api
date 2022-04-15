defmodule TlogApi.Repo.Migrations.CreatePostsTable do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :slug, :string
      add :image, :string
      add :description, :string
      add :author_name, :string
      add :author_image, :string

      timestamps()
    end
  end
end
