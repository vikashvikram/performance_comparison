defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def fib(conn, _params) do
    text conn, "#{Fib.fib(25)}"
  end
end
