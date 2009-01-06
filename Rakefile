%w[rubygems rake rake/clean fileutils newgem rubigen].each { |f| require f }
require File.dirname(__FILE__) + '/lib/persistable'

$hoe = Hoe.new('persistable', Persistable::VERSION) do |p|
  p.developer('Caroo GmbH', 'dev@pkw.de')
  p.post_install_message = 'PostInstall.txt'
  p.changes              = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  p.extra_dev_deps = [
    ['mocha'],
    ['mogilefs-client'],
    ['newgem', ">= #{::Newgem::VERSION}"]
  ]
  p.summary = "Persistable is a library for persisting IO-Data into any storage you like. It provides adapters for in-memory storage, file storage and mogile-fs but can be easily extended with your own adapters."
  p.clean_globs |= %w[**/.DS_Store tmp *.log]
end

require 'newgem/tasks'

desc "Run unit tests"
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  t.warning = true
end

desc 'Generate RDoc'
Rake::RDocTask.new do |task|
  task.main = 'README.rdoc'
  task.title = "Persistable #{Persistable::VERSION}"
  task.rdoc_dir = 'doc'
  task.rdoc_files.include('README.rdoc', 'COPYING', 'MIT-LICENSE', "lib/persistable/*.rb")
end