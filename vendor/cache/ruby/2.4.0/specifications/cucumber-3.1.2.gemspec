# -*- encoding: utf-8 -*-
# stub: cucumber 3.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber".freeze
  s.version = "3.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aslak Helles\u00F8y".freeze, "Matt Wynne".freeze, "Steve Tooke".freeze]
  s.date = "2018-07-13"
  s.description = "Behaviour Driven Development with elegance and joy".freeze
  s.email = "cukes@googlegroups.com".freeze
  s.executables = ["cucumber".freeze]
  s.files = ["bin/cucumber".freeze]
  s.homepage = "https://cucumber.io/".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "2.7.10".freeze
  s.summary = "cucumber-3.1.2".freeze

  s.installed_by_version = "2.7.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<builder>.freeze, [">= 2.1.2"])
      s.add_runtime_dependency(%q<cucumber-core>.freeze, ["~> 3.2.0"])
      s.add_runtime_dependency(%q<cucumber-expressions>.freeze, ["~> 6.0.1"])
      s.add_runtime_dependency(%q<cucumber-wire>.freeze, ["~> 0.0.1"])
      s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
      s.add_runtime_dependency(%q<gherkin>.freeze, ["~> 5.1.0"])
      s.add_runtime_dependency(%q<multi_json>.freeze, [">= 1.7.5", "< 2.0"])
      s.add_runtime_dependency(%q<multi_test>.freeze, [">= 0.1.2"])
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.6.1"])
      s.add_development_dependency(%q<json>.freeze, ["~> 1.8.6"])
      s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.6"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.52.1"])
      s.add_development_dependency(%q<simplecov>.freeze, [">= 0.6.2"])
      s.add_development_dependency(%q<syntax>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<octokit>.freeze, [">= 0"])
      s.add_development_dependency(%q<capybara>.freeze, [">= 2.1"])
      s.add_development_dependency(%q<rack-test>.freeze, [">= 0.6.1"])
      s.add_development_dependency(%q<sinatra>.freeze, [">= 1.3.2"])
    else
      s.add_dependency(%q<builder>.freeze, [">= 2.1.2"])
      s.add_dependency(%q<cucumber-core>.freeze, ["~> 3.2.0"])
      s.add_dependency(%q<cucumber-expressions>.freeze, ["~> 6.0.1"])
      s.add_dependency(%q<cucumber-wire>.freeze, ["~> 0.0.1"])
      s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
      s.add_dependency(%q<gherkin>.freeze, ["~> 5.1.0"])
      s.add_dependency(%q<multi_json>.freeze, [">= 1.7.5", "< 2.0"])
      s.add_dependency(%q<multi_test>.freeze, [">= 0.1.2"])
      s.add_dependency(%q<aruba>.freeze, ["~> 0.6.1"])
      s.add_dependency(%q<json>.freeze, ["~> 1.8.6"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.6"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.52.1"])
      s.add_dependency(%q<simplecov>.freeze, [">= 0.6.2"])
      s.add_dependency(%q<syntax>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<octokit>.freeze, [">= 0"])
      s.add_dependency(%q<capybara>.freeze, [">= 2.1"])
      s.add_dependency(%q<rack-test>.freeze, [">= 0.6.1"])
      s.add_dependency(%q<sinatra>.freeze, [">= 1.3.2"])
    end
  else
    s.add_dependency(%q<builder>.freeze, [">= 2.1.2"])
    s.add_dependency(%q<cucumber-core>.freeze, ["~> 3.2.0"])
    s.add_dependency(%q<cucumber-expressions>.freeze, ["~> 6.0.1"])
    s.add_dependency(%q<cucumber-wire>.freeze, ["~> 0.0.1"])
    s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
    s.add_dependency(%q<gherkin>.freeze, ["~> 5.1.0"])
    s.add_dependency(%q<multi_json>.freeze, [">= 1.7.5", "< 2.0"])
    s.add_dependency(%q<multi_test>.freeze, [">= 0.1.2"])
    s.add_dependency(%q<aruba>.freeze, ["~> 0.6.1"])
    s.add_dependency(%q<json>.freeze, ["~> 1.8.6"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.8.1"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.6"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.52.1"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0.6.2"])
    s.add_dependency(%q<syntax>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<octokit>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 2.1"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0.6.1"])
    s.add_dependency(%q<sinatra>.freeze, [">= 1.3.2"])
  end
end
