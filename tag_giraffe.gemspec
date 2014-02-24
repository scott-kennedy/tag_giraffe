Gem::Specification.new do |s|
  s.name        = 'tag_giraffe'
  s.version     = '0.0.1'
  s.authors     = [ 'Scott Kennedy' ]
  s.email       = [ 'skennedy84@gmail.com' ]
  s.homepage    = 'https://github.com/scott-kennedy/tag_giraffe'
  s.summary     = 'The Tag Giraffe'
  s.description = 'This friendly giraffe gives you tags in your Rails app.'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec}/*`.split("\n")
  s.require_paths = [ "lib" ]
  
  s.add_runtime_dependency     'activerecord',  '>=3.2.0'
  s.add_development_dependency 'combustion',    '~> 0.4.0'
  s.add_development_dependency 'rspec-rails',   '~> 2.13'
  s.add_development_dependency 'sqlite3',    '~> 1.3.7'
end