defmodule FeedbackWeb.CustomComponents do
  use Phoenix.Component

  def header(assigns) do
    ~H"""
    <header class="
        w-full h-[72px] bg-gradient-to-tr from-gradientColors-from via-gradientColors-via to-gradientColors-to text-white
        pt-4 px-6">
      <div class="font-bold">Jamario Thorne</div>
      <div class="text-sm">Feedback Board</div>
    </header>
    """
  end

  def nav(assigns) do
    ~H"""
    <nav class="h-14 bg-blue-darkest">
      <div>Navigation bar</div>
    </nav>
    """
  end
end
