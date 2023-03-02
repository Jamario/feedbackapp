defmodule Feedback.Request do
  use Ecto.Schema
  import Ecto.Changeset

  schema "requests" do
    field :title, :string
    field :description, :string
    field :upvotes, :integer

    belongs_to :user, Feedback.User
    belongs_to :category, Feedback.Category
    has_many :comments, Feedback.Comment

    timestamps()
  end

  @doc false
  def changeset(request, attrs) do
    request
    |> cast(attrs, [:title, :description, :upvotes, :user_id, :category_id])
    |> validate_required([:title, :description, :user_id, :category_id])
  end
end
