# -*- encoding: utf-8 -*-
# stub: omniauth 1.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth".freeze
  s.version = "1.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Bleigh".freeze, "Erik Michaels-Ober".freeze, "Tom Milewski".freeze]
  s.date = "2018-12-14"
  s.description = "A generalized Rack framework for multiple-provider authentication.".freeze
  s.email = ["michael@intridea.com".freeze, "sferik@gmail.com".freeze, "tmilewski@gmail.com".freeze]
  s.homepage = "https://github.com/omniauth/omniauth".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "2.7.10".freeze
  s.summary = "A generalized Rack framework for multiple-provider authentication.".freeze

  s.installed_by_version = "2.7.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>.freeze, [">= 3.4.6", "< 3.7.0"])
      s.add_runtime_dependency(%q<rack>.freeze, [">= 1.6.2", "< 3"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 12.0"])
    else
      s.add_dependency(%q<hashie>.freeze, [">= 3.4.6", "< 3.7.0"])
      s.add_dependency(%q<rack>.freeze, [">= 1.6.2", "< 3"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
      s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
    end
  else
    s.add_dependency(%q<hashie>.freeze, [">= 3.4.6", "< 3.7.0"])
    s.add_dependency(%q<rack>.freeze, [">= 1.6.2", "< 3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 12.0"])
  end
end
