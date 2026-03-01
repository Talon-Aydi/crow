defmodule Crow.Repo do
  use Ecto.Repo,
    otp_app: :crow,
    adapter: Ecto.Adapters.Postgres
end
