require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "httphere"
    gem.summary = %Q{A simple Ruby HTTP file server}
    gem.description = %Q{httphere is a very small and simple ruby command-line HTTP file server.}
    gem.email = "gems@behindlogic.com"
    gem.homepage = "http://dcparker.github.com/httphere"
    gem.authors = ["Daniel Parker"]
    gem.add_dependency 'shared-mime-info'
    gem.add_dependency 'chardet'
    gem.post_install_message = "\n\033[34mhttphere wants to detect MIME-types! For this\nyou'll need to install the open-source shared-mime-info.\nAssuming you're on a Mac, you can simply run:\n\033[0m  \033[31msudo port install shared-mime-info\033[0m\n\n * This gem has not been tested on Windows.\n\n"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "httphere #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
