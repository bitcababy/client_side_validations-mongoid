require 'rubygems'
require 'bundler'
Bundler.setup
require 'test/unit'
require 'mocha'
if RUBY_VERSION >= '1.9.3'
  begin
    require 'debugger'
  rescue LoadError
  end
end

require 'client_side_validations/config'

module Rails
  def self.env
    self
  end

  def self.development?
    false
  end
end
