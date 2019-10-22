
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ebisu/version"

Gem::Specification.new do |spec|
  spec.name          = "ebisu"
  spec.version       = Ebisu::VERSION
  spec.authors       = ["totem3"]
  spec.email         = ["ganzheit.com@gmail.com"]

  spec.summary       = %q{yahoo api client}
  spec.description   = %q{Ebisu is the yahoo item search api cilent.}

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "multi_xml"
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'mysql2'
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
end
