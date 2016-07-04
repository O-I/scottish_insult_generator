defmodule ScottishInsultGenerator.PageController do
  use ScottishInsultGenerator.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
