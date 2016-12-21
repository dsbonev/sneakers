require 'spec_helper'
require 'sneakers'

describe Sneakers::JobTimeout do
  describe 'error message' do
    it 'equals provided message' do
      error = Sneakers::JobTimeout.new('error message')
      error.message.must_equal 'error message'
    end

    it 'includes timeout_after if it is provided' do
      error = Sneakers::JobTimeout.new 'error message'
      error.timeout_after = 1.5
      error.message.must_equal 'error message, timeout_after=1.5'
    end
  end
end
