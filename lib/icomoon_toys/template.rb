# frozen_string_literal: true

require 'memery'
require 'toys-core'

module IcoMoonToys
	## Toys template for IcoMoon
	class Template
		include Toys::Template

		attr_reader :extract_map

		DEFAULT_EXTRACT_MAP = {
			'selection.json' => 'assets/icomoon/selection.json',
			'svgxuse.min.js' => 'public/scripts/lib/svgxuse.min.js',
			'style.css' => 'public/styles/icomoon.css',
			'symbol-defs.svg' => 'public/images/icons/symbol-defs.svg'
		}.freeze

		def initialize(extract_map: DEFAULT_EXTRACT_MAP)
			@extract_map = DEFAULT_EXTRACT_MAP.merge extract_map
		end

		on_expand do |template|
			tool :icomoon do
				tool :extract do
					include Memery

					desc 'Extract IcoMoon archive'

					required_arg :zip_file

					to_run do
						@template = template

						require 'zip'
						require 'fileutils'

						Zip::File.open(zip_file) do |content|
							extract_map.each do |source, target|
								FileUtils.mkdir_p File.dirname target
								content.get_entry(source).extract(target) { true }
							end
						end
					end

					private

					memoize def extract_map
						@template.extract_map.transform_values do |relative_path|
							"#{context_directory}/#{relative_path}"
						end
					end
				end
			end

			alias_tool :icomoon, 'icomoon:extract'
		end
	end
end
