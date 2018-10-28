require 'caller/version'

module Caller
  def caller_for(*callers_methods)
    callers_methods.each do |method|
      define_singleton_method method do |*args, &block|
        new.send(method, *args, &block)
      end
    end
  end

  def self.extended(base)
    base.caller_for :call
  end
end
