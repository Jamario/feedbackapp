defmodule Feedback.Repo.Migrations.CreateCategoriesTable do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :title, :string
    end
  end
end
