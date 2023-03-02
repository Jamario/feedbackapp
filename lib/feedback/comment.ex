defmodule Feedback.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :content, :string

    belongs_to :request, Feedback.Request
    belongs_to :user, Feedback.User

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:content, :user_id, :request_id])
    |> validate_required([:content, :user_id, :request_id])
  end
end
