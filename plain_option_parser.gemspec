
Gem::Specification.new do |s|
  s.name = %q{plain_option_parser}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kyle Maxwell"]
  s.date = %q{2011-03-12}
  s.description = %q{Parse command-line options in style}
  s.email = %q{kyle@kylemaxwell.com}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/plain_option_parser.rb",
    "plain_option_parser.gemspec",
    "spec/plain_option_parser_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/fizx/plain_option_parser}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.0}
  s.summary = %q{a heroku-like option parser}
  s.test_files = [
    "spec/plain_option_parser_spec.rb",
    "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

