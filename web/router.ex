defmodule ScottishInsultGenerator.Router do
  use ScottishInsultGenerator.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ScottishInsultGenerator do
    pipe_through :browser # Use the default browser stack

    get "/", InsultController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", ScottishInsultGenerator do
  #   pipe_through :api
  # end
end
