def fibonacci(n)
  n < 2 ? n : fibonacci(n-2) + fibonacci(n-1)
end

workers Integer(ENV['WEB_CONCURRENCY'] || 8)
threads_count = Integer(ENV['MAX_THREADS'] || 32)
threads threads_count, threads_count

preload_app!
#
# rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'production'


app do |env|
  # puts env

  body = fibonacci(25)

  [200, { 'Content-Type' => 'text/plain' }, [body.to_s]]
end
