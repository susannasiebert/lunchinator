require "resque/tasks"
require 'resque_scheduler/tasks'

namespace :resque do
  task :setup do
    require 'resque'
    require 'resque_scheduler'

    Resque.redis = Redis.new(url: ENV["REDIS_URL"])
  end
end
