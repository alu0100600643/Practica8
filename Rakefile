task :default => :bin

desc "Run lib/matriz.rb"
task :bin do
  sh "ruby lib/matriz.rb"
end

desc "Run test with --format documentation"
task :spec do
   sh "rspec -I. rspec/rspec_p8.rb --format documentation"
end

desc "Run test with format: html"
 task:thtml do
    sh" rspec -I. rspec/rspec_p8.rb --format html"
 end