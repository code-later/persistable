require 'rubygems'
require 'rake'
require 'echoe'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'rake/testtask'

module Persistable
  VERSION = "0.3.0"
end

Echoe.new('persistable', Persistable::VERSION) do |p|
  p.description    = "Persists anything in any storage solution."
  p.url            = "http://github.com/samwise/persistable"
  p.author         = "Caroo GmbH"
  p.email          = "dev@pkw.de"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = ["mocha", "mogilefs"]
end

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

specification = Gem::Specification.new do |s|
  s.name   = "persistable"
  s.summary = "Abstract Persistance Library"
  s.version = Persistable::VERSION
  s.platform = Gem::Platform::RUBY
  s.author = 'pkw.de'
  s.description = <<-EOF
    Persistable is a library for persisting IO-Data into any storage you like. It provides adapters for in-memory storage, file storage and mogile-fs but can be easily extended with your own adapters.
  EOF
  s.email = 'dev@pkw.de'
  s.homepage = 'http://pkw.de'

  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc', 'COPYING']
  s.rdoc_options << '--title' << 'Persistable' << '--main' << 'README.rdoc' << '--line-numbers'
                         
  s.autorequire = 'persistable'
  s.add_dependency('rake')
  s.files = FileList['{lib,test}/**/*.rb', '[A-Z]*'].exclude('TODO').to_a
end

Rake::GemPackageTask.new(specification) do |package|
   package.need_zip = true
   package.need_tar = true
end