# -*- encoding: utf-8 -*-
# stub: csvreader 1.2.4.20200112212839 ruby lib

Gem::Specification.new do |s|
  s.name = "csvreader".freeze
  s.version = "1.2.4.20200112212839"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/csvreader/csvreader" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gerald Bauer".freeze]
  s.date = "2020-01-13"
  s.description = "csvreader - read tabular data in the comma-separated values (csv) format the right way (uses best practices out-of-the-box with zero-configuration)".freeze
  s.email = "wwwmake@googlegroups.com".freeze
  s.extra_rdoc_files = ["HISTORY.md".freeze, "LICENSE.md".freeze, "Manifest.txt".freeze, "README.md".freeze]
  s.files = ["HISTORY.md".freeze, "LICENSE.md".freeze, "Manifest.txt".freeze, "README.md".freeze, "Rakefile".freeze, "datasets/beer.csv".freeze, "datasets/beer11.csv".freeze, "datasets/cars11.csv".freeze, "datasets/cities11.csv".freeze, "datasets/customers11.csv".freeze, "datasets/iris.attrib.csv".freeze, "datasets/iris11.csv".freeze, "datasets/lcc.attrib.csv".freeze, "datasets/shakespeare.csv".freeze, "datasets/test.csv".freeze, "lib/csvreader.rb".freeze, "lib/csvreader/base.rb".freeze, "lib/csvreader/buffer.rb".freeze, "lib/csvreader/builder.rb".freeze, "lib/csvreader/converter.rb".freeze, "lib/csvreader/parser.rb".freeze, "lib/csvreader/parser_fixed.rb".freeze, "lib/csvreader/parser_json.rb".freeze, "lib/csvreader/parser_std.rb".freeze, "lib/csvreader/parser_strict.rb".freeze, "lib/csvreader/parser_tab.rb".freeze, "lib/csvreader/parser_table.rb".freeze, "lib/csvreader/parser_yaml.rb".freeze, "lib/csvreader/reader.rb".freeze, "lib/csvreader/reader_hash.rb".freeze, "lib/csvreader/version.rb".freeze, "test/helper.rb".freeze, "test/test_buffer.rb".freeze, "test/test_converter.rb".freeze, "test/test_parser.rb".freeze, "test/test_parser_autofix.rb".freeze, "test/test_parser_directive.rb".freeze, "test/test_parser_fixed.rb".freeze, "test/test_parser_formats.rb".freeze, "test/test_parser_java.rb".freeze, "test/test_parser_meta.rb".freeze, "test/test_parser_null.rb".freeze, "test/test_parser_numeric.rb".freeze, "test/test_parser_quotes.rb".freeze, "test/test_parser_strict.rb".freeze, "test/test_parser_tab.rb".freeze, "test/test_parser_table.rb".freeze, "test/test_reader.rb".freeze, "test/test_reader_converters.rb".freeze, "test/test_reader_hash.rb".freeze, "test/test_reader_hash_converters.rb".freeze, "test/test_samples.rb".freeze]
  s.homepage = "https://github.com/csvreader/csvreader".freeze
  s.licenses = ["Public Domain".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.2".freeze)
  s.rubygems_version = "3.0.6".freeze
  s.summary = "csvreader - read tabular data in the comma-separated values (csv) format the right way (uses best practices out-of-the-box with zero-configuration)".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tabreader>.freeze, [">= 1.0.1"])
      s.add_runtime_dependency(%q<csvyaml>.freeze, [">= 0.1.0"])
      s.add_runtime_dependency(%q<csvjson>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
      s.add_development_dependency(%q<hoe>.freeze, ["~> 3.21"])
    else
      s.add_dependency(%q<tabreader>.freeze, [">= 1.0.1"])
      s.add_dependency(%q<csvyaml>.freeze, [">= 0.1.0"])
      s.add_dependency(%q<csvjson>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
      s.add_dependency(%q<hoe>.freeze, ["~> 3.21"])
    end
  else
    s.add_dependency(%q<tabreader>.freeze, [">= 1.0.1"])
    s.add_dependency(%q<csvyaml>.freeze, [">= 0.1.0"])
    s.add_dependency(%q<csvjson>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.21"])
  end
end
