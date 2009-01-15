# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{persistable}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Caroo GmbH"]
  s.date = %q{2009-01-15}
  s.description = %q{}
  s.email = ["dev@pkw.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc"]
  s.files = [".git/FETCH_HEAD", ".git/HEAD", ".git/MERGE_HEAD", ".git/MERGE_MSG", ".git/ORIG_HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg", ".git/hooks/commit-msg", ".git/hooks/post-commit", ".git/hooks/post-receive", ".git/hooks/post-update", ".git/hooks/pre-applypatch", ".git/hooks/pre-commit", ".git/hooks/pre-rebase", ".git/hooks/update", ".git/index", ".git/info/exclude", ".git/logs/HEAD", ".git/logs/refs/heads/master", ".git/logs/refs/remotes/origin/master", ".git/objects/01/60b24583eb046e6f9c483ecbee3f846555fb72", ".git/objects/02/403e18298c72425cfd68fa2199ddcd7d0dfe22", ".git/objects/03/5f160f13a4f9a2689aa2546a587a499613310f", ".git/objects/06/e36ecabfc7503db2d5759355d54def1dbec635", ".git/objects/08/a2b8c1d16fd08d9facd7a5d1ebe0018f854b2b", ".git/objects/09/8af01ffd546d999baa39d80bfd6f51439f6536", ".git/objects/0a/c3a2fd58ad039faf28052a5960c56520e3fdab", ".git/objects/0f/57e11cd2f3c73239c10626cace954a206b9836", ".git/objects/10/07a884f926c19f7c8d09ac631bfd5d6cfef2cf", ".git/objects/10/85369ccf3e2facd9b6182e10ac59a5053cb3b3", ".git/objects/11/b7724a1ed658c735e7dbe03ad94f102c15e010", ".git/objects/17/0023fe5d65bf9cda6fd0dfdce92ab2ad1d9fc7", ".git/objects/17/47bd11d4b294889c6484128e37a10f63c23646", ".git/objects/19/1b98925c1d8da30cec303b200455f08fa2ca7b", ".git/objects/1a/27af7d86b44fea41577e22e74e793461e7b4d4", ".git/objects/1b/a2619cbc9d5a7fcceb58f60164b46d241215c9", ".git/objects/1d/e36bdac5e5f75dc73f2eba591260aaa50c3089", ".git/objects/22/66df91ecd2d65f17c575d31718a97a08b61df8", ".git/objects/23/d1bbc14fd8a445ca03487dc08b846df9e85328", ".git/objects/2b/1db0bd8c79ce8ae6daaeab71945ba042632438", ".git/objects/3b/f6181bd6e0f5fb435ad0c25fa3d145995fb718", ".git/objects/3c/975aa70ae74ff635727ba365b4d295671da5f1", ".git/objects/42/68914d7e380db24b5a618f7ef05fdf91b3d9d0", ".git/objects/44/267b390ce86ababfd909911893267a5a619dd3", ".git/objects/45/a559d9ed213b62166d1f1b6a03c57f512594ef", ".git/objects/48/6838f5801b5456d65fa2d4887e68fba2081717", ".git/objects/4f/01322fa5cdabf4193db8461ff7a4da77eb502e", ".git/objects/53/692412cdb35d4f3d1c00d81293071218457809", ".git/objects/57/38c19e1313cbfc285e645042a38662d8b9a52f", ".git/objects/58/1fd3e49f241fbe166b38a14672039ed6430a88", ".git/objects/5b/899bdd5e96f5bf498fb3d1942483ac89333c01", ".git/objects/65/fe2b47bab78f1a53a977fb495cbc8005e88c7c", ".git/objects/68/0688964ab16c5f05fc3fbeb08481ff8c455d8f", ".git/objects/69/75a4a1563e8a2924970141ff5ddb4aeb1ee87b", ".git/objects/6e/1adf70a83f04faf65f7017b8e0fb806279b48f", ".git/objects/74/9f2f01baeb6f226e8bda56b008d449ce323735", ".git/objects/7c/c9b19263387e4da0af7b8ca53d047fbc1d7c1c", ".git/objects/7c/db0a919a1ad1302fe95ce51c1ff7fd448e34c3", ".git/objects/7d/7c4f2fd77ad76394e5b3a0a75fb8da720f8f8a", ".git/objects/7e/c65c73e6613b4054655cbdf22ee654fc5e2b3a", ".git/objects/87/b32954fca0fa89288716d72b01c1ab41eafcbb", ".git/objects/8c/898c008a497c0ee427b955c4a276c3975a974f", ".git/objects/8e/c771835bcf60919be4da0196446e5b21f12c55", ".git/objects/96/3bfb73480d803469a75b3b374427f3909b8f77", ".git/objects/99/3a21d80febe79d330d20de7e59ae09ade92c8c", ".git/objects/9b/97571690b88cce9b3a0bf75ceeddc4ec5e28cd", ".git/objects/9d/9af35cb3edaab6b01d722763cfcadd21dd5ecf", ".git/objects/a7/09c0c140bb30fc713cd410ca77c978944ea798", ".git/objects/ac/860e3a4bac41cc70c5eac5142c94dabab28ea6", ".git/objects/b7/053528e6f40b16837cb5cddb8c35271fc2270a", ".git/objects/bb/75af5936d1969e6b416be10edbfdf20ffd94ca", ".git/objects/bb/b06a284bb2984988273fd6835512bdfb329abe", ".git/objects/bf/8f43bd10d767aa74a0e4cf4da540daf9b1b7c3", ".git/objects/bf/e5cc476d828b159928cb27bfd9523e705f4515", ".git/objects/c2/96fd60ecf2adc7935e893fa49ea5508d8ce6d3", ".git/objects/c5/2505156659a5edd3762c01ac962778ee9038c2", ".git/objects/c7/89514f64eff9380bc7c4149cc62ec2405a7e28", ".git/objects/c8/c0b950482c7e9ca47e6c11c5f5e468cb53d82f", ".git/objects/ca/91ec4032bfe2170ef846dbdf6201efc5c019ec", ".git/objects/cd/31f15ab91f69949a65176d9056ee50ae1877f6", ".git/objects/d2/d48eb76251dacf9a6afc9c8ae8d13889d324b2", ".git/objects/d4/a20f8ac844a52e096363b926aa057336952653", ".git/objects/d7/4d07ee5bcb55f6576e3c44d394219040e9e4e6", ".git/objects/da/da5650f9f6bed5c9ad21a54f705f87db524b07", ".git/objects/da/f9c87260a4dd4898d2dba404ac057f8fbe538f", ".git/objects/df/6fa58bd55ee610752140c2cae1ac99db725eb7", ".git/objects/e1/796d3d0a6385bfb5f7142c663775722d8239e0", ".git/objects/e2/f8fafefaa9bb56bb40f2cdb047b1a26f44f873", ".git/objects/e5/622da28703eec25ac71844962761dad6f951f2", ".git/objects/e7/dda9babc4557b6b57d576899c93e678b68f285", ".git/objects/eb/88408c2cf76238bc2026216c4a66013caa50f2", ".git/objects/ed/ef0f92131322d5868a25ca3a0f28d77612c59a", ".git/objects/f0/6d57d5a562f5de477b3a5e52e9ae609da91f87", ".git/objects/f2/026073f11a007d4178229db47e0a5c438a2231", ".git/objects/f2/37f2a5deead4a4d588e0021e52daa03df2c74a", ".git/objects/f6/7e570a2c15f798db438a9e56408f67b50e315f", ".git/objects/f8/e5ba36e924bdea0eb5b60d63678f9c758ea54a", ".git/objects/f9/65480784fc0a1b84dc381eb93bfd5458327dc0", ".git/objects/fa/04c11acae17cfa943664d245e6a931b788b77c", ".git/objects/fc/3c943ee6c09c3ab18ff6688d7c5adca0918416", ".git/objects/fc/bf24677482edf85773639d7cbe985e678ec52e", ".git/objects/fe/8fd720f2d00d97fa833f063740d818364b8f5b", ".git/objects/pack/pack-29b63b012cbca6ea6ce5d33cd341dea2a9ff432d.idx", ".git/objects/pack/pack-29b63b012cbca6ea6ce5d33cd341dea2a9ff432d.pack", ".git/refs/heads/master", ".git/refs/remotes/origin/HEAD", ".git/refs/remotes/origin/master", ".gitignore", "COPYING", "History.txt", "MIT-LICENSE", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/persistable.rb", "lib/persistable/factory.rb", "lib/persistable/fs_adapter.rb", "lib/persistable/memory_adapter.rb", "lib/persistable/mogile_fs_adapter.rb", "persistable.gemspec", "test/factory_test.rb", "test/fs_adapter_test.rb", "test/memory_adapter_test.rb", "test/mogile_fs_adapter_test.rb", "test/test_helper.rb"]
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
