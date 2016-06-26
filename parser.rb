require 'nokogiri'

# path and name to file we want to post-process
file_path_name = ARGV[0]
content = File.read(file_path_name)
parse = Nokogiri::HTML(content).text

file_name = file_path_name.split('/').last
output_file_name = "./out/#{file_name}"
open(output_file_name, 'w') do |file|
    file << parse
end

puts "File `#{file_path_name}` saved to `#{output_file_name}`."
