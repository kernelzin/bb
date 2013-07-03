lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'blackbeard/version'

Gem::Specification.new do |s|
  s.name = "blackbeard"
  s.version = BB::VERSION

  s.authors = ["Marcos Piccinini", "Rafael Coutinho"]
  s.description = "Makes pirate life easier"
  s.homepage = "http://github.com/kernelzin/bb"
  s.summary = "Object enums with i18n in AR or Mongoid"
  s.email = "k@fireho.com"
  s.default_executable = %q{bb}
  s.executables = ["bb"]

  s.files = Dir.glob("{lib,spec}/**/*") + %w(README.rdoc Rakefile)
  s.require_path = "lib"

  s.rubygems_version = "1.3.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.add_development_dependency("i18n", [">= 0.6.0"])
  s.add_development_dependency("rspec", [">= 2.13.0"])
  s.add_development_dependency("mechanize", [">= 2.7.1"])
  
end
