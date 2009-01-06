require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('persistable', '0.1.0') do |p|
  p.description    = "Persists anything in any storage solution."
  p.url            = "http://github.com/samwise/persistable"
  p.author         = "Caroo GmbH"
  p.email          = "dev@pkw.de"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ["mocha", "mogilefs"]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each