defmodule UnblogasoApi.Router do
  use UnblogasoApi.Web, :router

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

  scope "/", UnblogasoApi do
    # pipe_through :browser # Use the default browser stack
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit]
    # get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", UnblogasoApi do
  #   pipe_through :api
  # end
end
