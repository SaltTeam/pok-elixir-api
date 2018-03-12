defmodule PokElixirApiWeb.Router do
  use PokElixirApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PokElixirApiWeb do
    pipe_through :api
  end
end
