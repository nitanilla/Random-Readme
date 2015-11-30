# This scripts receive two arguments:
#   @folder-path: The path to an folder that must have files with the format: "0000.-.*"
#   @number-of-files: The number of files to be randomically selected
#
# Usage: ruby random.rb @folder-path @number-of-files
# Example: ruby random.rb "1er grupo/menor a 1/" 209
#
# It will create two files:
#   <folder-path>/aaa-random.txt
#       contains all the numbers of the files randomized
#
#   <folder-path>/aaa-random-contents.txt
#       contains the contents of the files randomized
#
require "fileutils"

if ARGV[0].nil? || ARGV[1].nil?
  puts %q{
Error: You must pass two parameters to the script.
Usage: ruby random.rb @folder-path @number-of-files

Checkout the documentation on the script header to learn more.
}
  exit
end

path = ARGV[0]
folder = File.join(path, "*")
qty = ARGV[1].to_i

numbers = Dir.glob(folder)
  .map{|path| File.basename(path)}
  .find_all{|filename| filename =~ /^\d{4}/}
  .map{|filename| filename.match(/^\d{4}/)[0].to_i}.sample(qty)



random_file = File.join(path, "aaa-random.txt")
File.open(random_file, "w"){|f| f.write(numbers.join(" "))}


contents = numbers.map do |number|
  file_path_pattern = File.join(path, "%.4d.-.*" % number)
  file_path = Dir.glob(file_path_pattern)[0]
  name = File.basename(file_path)
%Q(
####{"#"*name.size}###
## #{name} ##
####{"#"*name.size}###
#{File.read(file_path)}


)
end

random_contents_file = File.join(path, "aaa-random-contents.txt")
File.open(random_contents_file, "w"){|f| f.write(contents.join)}

if numbers.size != qty
  puts "Error: the script should randomize #{qty} files, but it randomized #{numbers.size}"
  exit
end

  puts "The script runned successfully! <3"
  puts "#{numbers.size} files were random selected"
  puts "'#{random_file}' this file has all the numbers"
  puts "'#{random_contents_file}' this file has all the contents"
