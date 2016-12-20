require 'timeout'

module Sneakers
  class JobTimeout < Timeout::Error; end
end
