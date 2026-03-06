defmodule CrowWeb.ChatView do
  use Phoenix.LiveView
  alias Crow.Chat

  def mount(_params, _session, socket) do
    his_messages = Chat.list_his_messages()

    {:ok,
      socket
      |> assign(:his_messages, his_messages)}
  end

  def render(assigns) do
    ~H"""
      <div class="chat-container">
        <div class="flex flex-col">
          <div class="flex flex-col space-y-4 p-3">
              <%= for msg <- @his_messages do %>
              <div class="max-w-xs p-5 bg-[#282c4d] text-white rounded-xl text-black">
                  <div class="flex justify-start">
                      <%= msg.content %>
                  </div>
                  <div class="text-sm flex justify-end">
                      <%= msg.time_stamp %>
                  </div>
              </div>
            <% end %>
          </div>

          <div class="p-2">
            <.live_component module={CrowWeb.MessageBox} id="message-box" />
          </div>
        </div>
      </div>
    """
  end
end
