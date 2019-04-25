# Copyright (C) 2014-2015 Kouhei Sutou <kou@cozmixng.org>

MRuby::Gem::Specification.new("mruby-pp") do |spec|
  spec.license = "BSD-2-Clause"
  spec.authors = [
    "Kouhei Sutou",
    "Tanaka Akira",
  ]
  spec.version = "1.0.2"
  spec.add_dependency("mruby-metaprog")
  spec.add_dependency("mruby-print")
  spec.add_dependency("mruby-sprintf")
  spec.add_dependency("mruby-string-ext")
  spec.add_dependency("mruby-struct")
end
