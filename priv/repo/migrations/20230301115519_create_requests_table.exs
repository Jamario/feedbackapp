defmodule Feedback.Repo.Migrations.CreateRequestsTable do
  use Ecto.Migration

  def change do
    create table(:requests) do
      add :title, :string
      add :upvotes, :integer
      add :description, :string
      add :user_id, references(:users)
      add :category_id, references(:categories)

      timestamps()
    end
  end
end
