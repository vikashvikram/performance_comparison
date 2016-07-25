class HomeController < ApplicationController
  def fibonacci
    render plain: fib(25).to_s
  end

  private
  def fib(n)
    n < 2 ? n : fib(n-1) + fib(n-2)
  end
end
