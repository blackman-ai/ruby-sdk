# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = 'blackman_client'
  s.version     = '0.0.5'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Blackman AI']
  s.email       = ['support@useblackman.ai']
  s.homepage    = 'https://www.useblackman.ai'
  s.summary     = 'Blackman AI Ruby SDK'
  s.description = 'Official Ruby client for Blackman AI - The AI API proxy that optimizes token usage to reduce costs'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 2.7'

  s.metadata = {
    'homepage_uri'      => 'https://www.useblackman.ai',
    'documentation_uri' => 'https://app.useblackman.ai/docs',
    'source_code_uri'   => 'https://github.com/blackman-ai/ruby-sdk',
    'bug_tracker_uri'   => 'https://github.com/blackman-ai/ruby-sdk/issues'
  }

  s.files         = Dir['lib/**/*', 'README.md', 'LICENSE']
  s.require_paths = ['lib']

  s.add_runtime_dependency 'faraday', '~> 2.0'
  s.add_runtime_dependency 'faraday-multipart', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 3.6'
end
