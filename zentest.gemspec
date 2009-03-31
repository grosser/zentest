# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{zentest}
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ryan Davis"]
  s.date = %q{2009-03-31}
  s.executables = ["multiruby", "multigem", "zentest", "multiruby_setup"]
  s.files = ["VERSION.yml", "History.txt", "README.markdown", "bin/multiruby", "bin/multigem", "bin/zentest", "bin/multiruby_setup", "lib/focus.rb", "lib/multiruby.rb", "lib/zentest.rb", "lib/functional_test_matrix.rb", "lib/zentest_mapping.rb", "test/test_focus.rb", "test/test_zentest.rb", "test/helper.rb", "test/test_zentest_mapping.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/grosser/zentest}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{ZenTest, without AutoTest and UnitDiff}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
