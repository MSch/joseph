$: << 'lib'
require 'joseph'

module Paypal2K
  include Joseph
end

Paypal2K.configure do |config|
  config.username = 'martin@letsannotate.com'
  config.password = 'secret'
end

puts Paypal2K.username # => 'asd'


class TwitterAuth
  include Joseph
end

t1 = TwitterAuth.new
t1.configure do |config|
  config.oauth_secret = 'asd'
end

t2 = TwitterAuth.new
t2.configure do |config|
  config.oauth_secret = 'qwe'
end

puts t1.oauth_secret # => 'asd'
puts t2.oauth_secret # => 'qwe'

