# frozen_string_literal: true
# The comment above will make all strings in a current file frozen
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lorekeeper/version'

Gem::Specification.new do |spec|
  spec.name          = "lorekeeper"
  spec.version       = Lorekeeper::VERSION
  spec.authors       = ["Jordi Polo"]
  spec.email         = ["mumismo@gmail.com"]

  spec.summary       = %q{ Very fast JSON logger }
  spec.description   = %q{ Opinionated logger which outputs messages in JSON format }
  spec.homepage      = "http://www.gihub.com/jordipolo/lorekeeper"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'oj', '~> 2.14'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 3.4'
  spec.add_development_dependency "mutant-rspec", '~> 0.8'
  spec.add_development_dependency "benchmark-ips", '~> 2.3'
  spec.add_development_dependency "timecop", '~> 0.8'
  spec.add_development_dependency "byebug", '~> 8.0'

end
