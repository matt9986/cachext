$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "pry"

require "cachext"

require "active_support/core_ext/numeric/time"
require "active_support/cache"
require "logger"
require "stringio"
require "redis"
require "thread/pool"

class DummyErrorLogger
  def call(_)
  end
end

Cachext.config.cache = ActiveSupport::Cache::MemCacheStore.new
Cachext.config.redis = Redis.new
Cachext.config.error_logger = DummyErrorLogger.new
