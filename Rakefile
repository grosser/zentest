$LOAD_PATH << 'lib'

require 'rubygems'
require 'zentest'

#rake test
require 'rake/testtask'
Rake::TestTask.new(:test) {|test| test.libs << "test"}
task :default => :test

desc "run autotest on itself"
task :autotest do
  ruby "-Ilib -w ./bin/autotest"
end

desc "update example_dot_autotest.rb with all possible constants"
task :update do
  system "p4 edit example_dot_autotest.rb"
  File.open "example_dot_autotest.rb", "w" do |f|
    f.puts "# -*- ruby -*-"
    f.puts
    Dir.chdir "lib" do
      Dir["autotest/*.rb"].sort.each do |s|
        next if s =~ /rails|discover/
        f.puts "# require '#{s[0..-4]}'"
      end
    end

    f.puts

    Dir["lib/autotest/*.rb"].sort.each do |file|
      file = File.read(file)
      m = file[/module.*/].split(/ /).last rescue nil
      next unless m

      file.grep(/def[^(]+=/).each do |setter|
        setter = setter.sub(/^ *def self\./, '').sub(/\s*=\s*/, ' = ')
        f.puts "# #{m}.#{setter}"
      end
    end
  end
  system "p4 diff -du example_dot_autotest.rb"
end

desc "show rcov report"
task :rcov_info do
  ruby "-Ilib -S rcov --text-report --save coverage.info test/test_*.rb"
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "zentest-without-autotest"
    gem.summary = "ZenTest, without AutoTest and UnitDiff"
    gem.homepage = "http://github.com/grosser/zentest"
    gem.authors = ["Ryan Davis"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

task :sort do
  begin
    sh 'for f in lib/*.rb; do echo $f; grep "^ *def " $f | grep -v sort=skip > x; sort x > y; echo $f; echo; diff x y; done'
    sh 'for f in test/test_*.rb; do echo $f; grep "^ *def.test_" $f > x; sort x > y; echo $f; echo; diff x y; done'
  ensure
    sh 'rm x y'
  end
end