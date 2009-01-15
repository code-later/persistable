# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{persistable}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Caroo GmbH"]
  s.date = %q{2009-01-15}
  s.description = %q{}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".git/HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg", ".git/hooks/commit-msg", ".git/hooks/post-commit", ".git/hooks/post-receive", ".git/hooks/post-update", ".git/hooks/pre-applypatch", ".git/hooks/pre-commit", ".git/hooks/pre-rebase", ".git/hooks/update", ".git/index", ".git/info/exclude", ".git/logs/HEAD", ".git/logs/refs/heads/master", ".git/logs/refs/remotes/origin/master", ".git/objects/pack/pack-29b63b012cbca6ea6ce5d33cd341dea2a9ff432d.idx", ".git/objects/pack/pack-29b63b012cbca6ea6ce5d33cd341dea2a9ff432d.pack", ".git/refs/heads/master", ".git/refs/remotes/origin/HEAD", ".git/refs/remotes/origin/master", ".gitignore", "COPYING", "History.txt", "MIT-LICENSE", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/persistable.rb", "lib/persistable/factory.rb", "lib/persistable/fs_adapter.rb", "lib/persistable/memory_adapter.rb", "lib/persistable/mogile_fs_adapter.rb", "persistable.gemspec", "test/factory_test.rb", "test/fs_adapter_test.rb", "test/memory_adapter_test.rb", "test/mogile_fs_adapter_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{Persistable is a library for persisting IO-Data into any storage you like. It provides adapters for in-memory storage, file storage and mogile-fs but can be easily extended with your own adapters.}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{persistable}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Persistable is a library for persisting IO-Data into any storage you like. It provides adapters for in-memory storage, file storage and mogile-fs but can be easily extended with your own adapters.}
  s.test_files = ["test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<mogilefs-client>, [">= 0"])
      s.add_development_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<mogilefs-client>, [">= 0"])
      s.add_dependency(%q<newgem>, [">= 1.2.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<mogilefs-client>, [">= 0"])
    s.add_dependency(%q<newgem>, [">= 1.2.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
