require 'rake/testtask'

Rake::TestTask.new do |task|
  task.pattern = 'spec/*_spec.rb'
  task.test_files = FileList['spec/lib/*_spec.rb']
end

desc 'Run application'
task :run do
  ['lib/prime', 'lib/multiplication_table'].each do |file_name|
    require File.join(File.dirname(__FILE__), file_name)
  end

  multiplication_table = MultiplicationTable.new(*Prime.find)

  max_number_length = multiplication_table.flatten.max.to_s.size

  multiplication_table.each do |row|
    puts(row.map { |number| format("%#{max_number_length}d ", number) }.join)
  end
end

