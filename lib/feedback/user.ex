defmodule Feedback.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :imageURL, :string
    field :name, :string
    field :username, :string

    has_many :requests, Feedback.Request
    has_many :comments, Feedback.Comment

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :username])
    |> validate_required([:name, :username])
  end
end
