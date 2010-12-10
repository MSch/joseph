require 'ostruct'

module Joseph
  def self.included(base)
    if base.class == Module
      base.extend self
    else
      super
    end
  end

  def config
    @config ||= OpenStruct.new
  end

  def configure
    yield config
  end

  def [](key)
    config.send key
  end

  # Lifted from http://github.com/stephencelis/app/blob/master/lib/app.rb#L69-76
  def method_missing(method, *args, &block)
    super if (key = method.to_s).end_with?("=")
    boolean = key.chomp!("?")
    value   = self[key]
    value   = value.call(*args, &block) if value.respond_to?(:call)
    boolean ? !!value : value
  end
end
