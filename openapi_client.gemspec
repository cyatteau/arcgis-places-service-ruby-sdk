# -*- encoding: utf-8 -*-

=begin
# ArcGIS places service documentation and description...
=end

$:.push File.expand_path("../lib", __FILE__)
require "openapi_client/version"

Gem::Specification.new do |s|
  s.name        = "openapi_client"
  s.version     = OpenapiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = [""]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "ArcGIS places service Ruby Gem"
  s.description = "# ArcGIS places service detailed description..."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = Dir["{lib,spec}/**/*", "LICENSE.txt", "README.md"].reject { |f| File.directory?(f) }
  s.test_files    = Dir["spec/**/*"].reject { |f| File.directory?(f) }
  s.executables   = Dir["bin/*"].map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
