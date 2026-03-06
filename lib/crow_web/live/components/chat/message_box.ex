defmodule CrowWeb.MessageBox do
  use CrowWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="flex flex-row p-2 h-14 rounded-lg bg-[#282c4d] text-white w-full">
      <Icons.microphone_icon />
      <input
        type="text"
        placeholder="Type a message..."
        phx-change="typing"
        phx-target={@myself}
        value={@message}
        class="flex-1 mx-2 outline-none bg-transparent"
      />
      <Icons.image_icon />
      <Icons.smile_icon />
    </div>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, message: "")}
  end

  def update(_assigns, socket) do
    {:ok, assign(socket, message: "")}
  end


  def handle_event("typing", %{"0" => message}, socket) do
    {:noreply, assign(socket, message: message)}
  end
end
