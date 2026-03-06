defmodule CrowWeb.ChatHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use CrowWeb, :html

  embed_templates "../live/chat/*"
end
