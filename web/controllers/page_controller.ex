defmodule ChatTutor.PageController do
  use ChatTutor.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
