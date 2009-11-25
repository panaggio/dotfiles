require 'irb/completion'

class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

require "rubygems"
begin
  require "utility_belt"
rescue LoadError
  warn "Missing utility_belt gem"
end
