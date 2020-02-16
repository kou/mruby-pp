# Copyright (C) 2014-2020 Sutou Kouhei <kou@cozmixng.org>

MRuby::Gem::Specification.new("mruby-pp") do |spec|
  spec.license = "BSD-2-Clause"
  spec.authors = [
    "Sutou Kouhei",
    "Tanaka Akira",
  ]
  spec.version = "1.0.4"
  spec.add_dependency("mruby-metaprog")
  spec.add_dependency("mruby-print")
  spec.add_dependency("mruby-sprintf")
  spec.add_dependency("mruby-string-ext")
  spec.add_dependency("mruby-struct")
end
