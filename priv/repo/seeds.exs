# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Feedback.Repo.insert!(%Feedback.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Feedback.Repo
alias Feedback.Category

# Required categories for the application
Repo.insert_all(Category, [
  %{title: "enhancement"},
  %{title: "ui"},
  %{title: "ux"},
  %{title: "feature"},
  %{title: "bug"}
])
