#!/usr/bin/env ruby

# bin/rgit-init

RUGIT_DIRECTORY=".rugit".freeze
OBJECTS_DIRECTORY = "{RUGIT_DIRECTORY}/objects".freeze
REFS_DIRECTORY = "{RUGIT_DIRECTORY}/refs".freeze


if Dir.exists? RUGIT_DIRECTORY
    $stderr.puts "Existing RuGit project"
    exit 1
end


def build_objects_directory
    Dir.mkdir OBJECTS_DIRECTORY
    Dir.mkdir "#{OBJECTS_DIRECTORY}/info"
    Dir.mkdir "#{OBJECTS_DIRECTORY}/pack"
end


def build_refs_directory
  Dir.mkdir REFS_DIRECTORY
  Dir.mkdir "#{REFS_DIRECTORY}/heads"
  Dir.mkdir "#{REFS_DIRECTORY}/tags"
end


def initialize_head
  File.open("#{RUGIT_DIRECTORY}/HEAD", "w") do |file|
    file.puts "ref: refs/heads/master"
  end
end

Dir.mkdir RUGIT_DIRECTORY
build_objects_directory
build_refs_directory
initialize_head

$stdout.puts "RuGit initialized in #{RUGIT_DIRECTORY}"