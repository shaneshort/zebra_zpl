# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'zebra_zpl/version'

Gem::Specification.new do |s|
  s.name        = 'zebra_zpl'
  s.version     = ZebraZpl::VERSION
  s.authors     = ['BM5k']
  s.email       = ['me@bm5k.com']
  s.homepage    = ''
  s.summary     = 'Create Zebra labels'
  s.description = 'Use ruby to describe labels, fields, and barcodes for printing via ZPL II.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename f }
  s.require_paths = ['lib']

  %w[ cover_me zebra_zpl rspec pry pry-nav yard redcarpet github-markup ].each { |lib| s.add_development_dependency lib }
end
