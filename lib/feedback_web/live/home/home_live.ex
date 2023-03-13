defmodule FeedbackWeb.HomeLive do
  use FeedbackWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
