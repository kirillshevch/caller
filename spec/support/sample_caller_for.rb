class SampleCallerFor
  extend Caller

  caller_for :define

  def define(text)
    text
  end
end
