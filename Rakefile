require 'bundler'
Bundler.setup

require "rspec"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "blackbeard/version"

desc "Builds the gem"
task :gem => :build
task :build do
  system "gem build blackbeard.gemspec"
  Dir.mkdir("pkg") unless Dir.exists?("pkg")
  system "mv blackbeard-#{BB::VERSION}.gem pkg/"
end

task :install => :build do
  system "sudo gem install pkg/blackbeard-#{BB::VERSION}.gem"
end

desc "Release the gem - Gemcutter"
task :release => :build do
  system "git tag -a v#{BB::VERSION} -m 'Tagging #{BB::VERSION}'"
  system "git push --tags"
  system "gem push pkg/blackbeard-#{BB::VERSION}.gem"
end


RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

task :default => [:spec]
