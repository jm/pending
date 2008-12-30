Gem::Specification.new do |s|
  s.name = %q{pending}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy McAnally"]
  s.date = %q{2008-12-30}
  s.description = %q{pending lets you define a block of test code that is currently "pending" functionality, similar to RSpec's pending method.}
  s.email = %q{jeremymcanally@gmail.com}
  s.extra_rdoc_files = ["History.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/pending.rb", "tasks/ann.rake", "tasks/bones.rake", "tasks/gem.rake", "tasks/git.rake", "tasks/manifest.rake", "tasks/notes.rake", "tasks/post_load.rake", "tasks/rdoc.rake", "tasks/rubyforge.rake", "tasks/setup.rb", "tasks/spec.rake", "tasks/svn.rake", "tasks/test.rake", "test/test_pending.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://jeremymcanally.com}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pending}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{pending lets you define a block of test code that is currently "pending" functionality, similar to RSpec's pending method}
  s.test_files = ["test/test_pending.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bones>, [">= 2.1.1"])
    else
      s.add_dependency(%q<bones>, [">= 2.1.1"])
    end
  else
    s.add_dependency(%q<bones>, [">= 2.1.1"])
  end
end
