require 'timeout'

module Sneakers
  class JobTimeout < Timeout::Error
    attr_accessor :timeout_after

    def message
      [super, timeout_message].compact.join ', '
    end

    private

    def timeout_message
      return nil if timeout_after.nil?

      "timeout_after=#{timeout_after}"
    end
  end
end
