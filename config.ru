require 'rack/rewrite'

destination = ENV.fetch('SCHEME_AND_DOMAIN')

use Rack::Rewrite do
  r301 %r{.*}, "#{destination}$&"
end

run lambda { |env| [200, {}, StringIO.new('')] }
