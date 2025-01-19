defmodule AppWeb.JobsLive do
  use AppWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket = assign(socket, message: "Hello World!!")

    {:ok, socket}
  end

  @impl true
  def handle_event("update", _params, socket) do
    socket = assign(socket, message: "Hola Mundo!!")

    {:noreply, socket}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <%= @message %>
    </div>

    <div>
      <.link phx-click="update">
        Cambia el idioma
      </.link>
    </div>
    """
  end
end
