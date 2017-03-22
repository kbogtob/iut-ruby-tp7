require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.libs.push "minitest/spec"
  t.test_files = FileList['minitest/**/*_specs.rb']
  t.verbose = false 
end

task :default => :test
