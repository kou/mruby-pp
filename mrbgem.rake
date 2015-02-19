# Copyright (C) 2014 Kouhei Sutou <kou@cozmixng.org>

MRuby::Gem::Specification.new("mruby-pp") do |spec|
  spec.license = "BSD-2-Clause"
  spec.authors = [
    "Kouhei Sutou",
    "Tanaka Akira",
  ]
  spec.version = "1.0.1"
  spec.add_dependency("mruby-sprintf")
  spec.add_dependency("mruby-print")
  spec.add_dependency("mruby-string-ext")
  spec.add_dependency("mruby-struct")
end
