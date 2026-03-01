defmodule CrowWeb.ChatController do
  use CrowWeb, :controller
  alias Crow.Chat

  def chat(conn, _params) do
    his_messages = Chat.list_his_messages()
    render(conn, :chat, his_messages: his_messages)
  end
end
