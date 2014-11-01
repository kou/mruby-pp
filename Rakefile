# -*- ruby -*-
#
# Copyright (c) 2014 Kouhei Sutou <kou@cozmixng.org>

task :default => :test

desc "Run test"
task :test => "mruby" do
  ENV["MRUBY_CONFIG"] = File.expand_path("config/test.rb")
  cd("mruby") do
    sh("rake", "all")
    sh("rake", "test")
  end
end

desc "Tag"
task :tag do
  /version = \"(.+?)\"/ =~ File.read("mrbgem.rake")
  version = $1
  sh("git", "tag", "-a", "-m", "#{version} has been released!!!", version)
end
