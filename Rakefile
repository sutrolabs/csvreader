require 'hoe'
require './lib/csvreader/version.rb'

Hoe.spec 'csvreader' do

  self.version = CsvReader::VERSION

  self.summary = "csvreader - read tabular data in the comma-separated values (csv) format the right way (uses best practices out-of-the-box with zero-configuration)"
  self.description = summary

  self.urls = { "home" => 'https://github.com/csvreader/csvreader' }

  self.author = 'Gerald Bauer'
  self.email = 'wwwmake@googlegroups.com'

  # switch extension to .markdown for gihub formatting
  self.readme_file  = 'README.md'
  self.history_file = 'HISTORY.md'

  self.extra_deps = [
     ['tabreader',  '>=1.0.1'],
     ['csvyaml',    '>=0.1.0'],
     ['csvjson',    '>=1.0.0']
   ]

  self.licenses = ['Public Domain']

  self.spec_extras = {
    required_ruby_version: '>= 2.2.2'
  }

end
