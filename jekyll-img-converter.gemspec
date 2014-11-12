Gem::Specification.new do |s|
  s.name        = "jekyll-img-converter"
  s.summary     = "Jekyll IMG tag conveter in markdown using with Redcarpet"
  s.description = "jekyll-img-converter is support to convert IMG tag with inline style from markdown using with Redcarpet"
  s.version     = "0.1.4"
  s.authors     = ["SungKwang Song"]
  s.email       = "saltfactory@gmail.com"

  s.homepage    = "https://github.com/saltfactory/jekyll-img-converter"
  s.licenses    = ["MIT"]
  s.files       = [ "lib/jekyll-img-converter.rb" ]

  s.add_dependency "jekyll", '~> 2.0'
  s.add_dependency "html-pipeline", '~> 1.9'

  s.add_development_dependency  'rake', '~> 10.3'
  s.add_development_dependency  'rdoc', '~> 4.1'
  s.add_development_dependency  'shoulda', '~> 3.5'
  s.add_development_dependency  'minitest', '~> 5.4'
  s.add_development_dependency  'redcarpet', '~> 3.2'
end
