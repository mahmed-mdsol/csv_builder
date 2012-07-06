Gem::Specification.new do |s|
  s.name = %q{csv_builder}
  s.version = "1.1.8"

  s.authors = [%q{Econsultancy}, %q{Vidmantas Kabosis}, %q{Gabe da Silveira}]
  s.date = %q{2012-07-06}
  s.description = %q{CSV template handler for Rails.  Enables :format => 'csv' in controllers, with templates of the form report.csv.csvbuilder.}
  s.email = %q{gabe@websaviour.com, maahmed@mdsol.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]


  s.files = `git ls-files`.split($\)  
  s.homepage = %q{http://github.com/mahmed-mdsol/csv_builder}
  s.licenses = [%q{MIT}]
  s.require_paths = [%q{lib}]
  s.summary = %q{CSV builder gem (Rails2-compatible)}

  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.add_dependency('fastercsv') if RUBY_VERSION.to_f < 1.9
end
