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
end