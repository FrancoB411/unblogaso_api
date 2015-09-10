defmodule UnblogasoApi.PageController do
  use UnblogasoApi.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
