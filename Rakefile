require 'bundler/gem_tasks'

JEKYLL_JAVASCRIPTS_PATH     = File.expand_path 'jekyll/javascripts', File.dirname(__FILE__)
JQUERY_ACE_JAVASCRIPTS_PATH = File.expand_path 'jquery-ace', File.dirname(__FILE__)
RAILS_JAVASCRIPTS_PATH      = File.expand_path 'vendor/assets/javascripts', File.dirname(__FILE__)

namespace 'jquery-ace-rails' do
  desc %(Build jquery-ace javascripts and sync with dependent repositories)
  task :build do
    Rake::Task['jquery-ace-rails:compile'].invoke
    Rake::Task['jquery-ace-rails:minify'].invoke
    Rake::Task['jquery-ace-rails:sync'].invoke
  end

  desc %(Compile jquery-ace coffee-script sources in jekyll path)
  task :compile do
    require 'coffee-script'

    compiled = CoffeeScript.compile File.read "#{JEKYLL_JAVASCRIPTS_PATH}/jquery-ace.coffee"

    File.open "#{JEKYLL_JAVASCRIPTS_PATH}/jquery-ace.js", "w" do |f|
      f.write compiled
    end
  end

  desc %(Minify jquery-ace javascripts in jekyll path)
  task :minify do
    require 'uglifier'

    minified = Uglifier.compile File.read "#{JEKYLL_JAVASCRIPTS_PATH}/jquery-ace.js"

    File.open "#{JEKYLL_JAVASCRIPTS_PATH}/jquery-ace.min.js", "w" do |f|
      f.write minified
    end
  end

  desc %(Copy jquery-ace files from jekyll path to dependent repositories)
  task :sync do
    [ JQUERY_ACE_JAVASCRIPTS_PATH, RAILS_JAVASCRIPTS_PATH ].each do |destination_path|
      FileUtils.cp_r "#{JEKYLL_JAVASCRIPTS_PATH}/.", "#{destination_path}/"
    end
  end
end

