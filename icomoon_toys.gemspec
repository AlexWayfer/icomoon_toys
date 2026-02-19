# frozen_string_literal: true

require_relative 'lib/icomoon_toys/version'

Gem::Specification.new do |spec|
	spec.name        = 'icomoon_toys'
	spec.version     = IcoMoonToys::VERSION
	spec.authors     = ['Alexander Popov']
	spec.email       = ['alex.wayfer@gmail.com']

	spec.summary     = 'Toys for extracting IcoMoon archives'
	spec.description = <<~DESC
		Toys for extracting IcoMoon archives.
	DESC
	spec.license = 'MIT'

	github_uri = "https://github.com/AlexWayfer/#{spec.name}"

	spec.homepage = github_uri

	spec.metadata = {
		'bug_tracker_uri' => "#{github_uri}/issues",
		'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
		'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
		'homepage_uri' => spec.homepage,
		'rubygems_mfa_required' => 'true',
		'source_code_uri' => github_uri,
		'wiki_uri' => "#{github_uri}/wiki"
	}

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 3.2', '< 4'

	spec.add_dependency 'alt_memery', '~> 3.0'
	spec.add_dependency 'rubyzip', '~> 3.2'
	spec.add_dependency 'toys-core', '~> 0.19.0'
end
