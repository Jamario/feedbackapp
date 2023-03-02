defmodule Feedback.Repo.Migrations.CreateCommentsTable do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :content, :string
      add :request_id, references(:requests)
      add :user_id, references(:users)

      timestamps()
    end
  end
end
