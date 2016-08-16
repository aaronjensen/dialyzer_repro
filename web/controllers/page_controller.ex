defmodule DialyzerRepro.PageController do
  use DialyzerRepro.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
