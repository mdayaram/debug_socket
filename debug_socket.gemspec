# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'debug_socket/version'

Gem::Specification.new do |spec|
  spec.name          = "debug_socket"
  spec.version       = DebugSocket::VERSION
  spec.authors       = ["Andrew Lazarus"]
  spec.email         = ["lazarus@squareup.com"]

  spec.summary       = "Debug Socket for running ruby processes"
  spec.homepage      = "https://stash.corp.squareup.com/projects/RUBY/repos/debug_socket"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  unless spec.respond_to?(:metadata)
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.metadata['allowed_push_host'] = "https://gems.vip.global.square/private/"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "sq-gem_tasks", "~> 1.5.1"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "0.40.0"
end