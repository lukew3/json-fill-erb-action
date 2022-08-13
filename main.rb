require 'json'
require 'erb'
require 'ostruct'

json_filepath = ARGV[0]
erb_filepath = ARGV[1]
out_filepath = ARGV[2] || erb_filepath[..-5]

file = File.read(json_filepath)
data_hash = JSON.parse(file)
latex_render = ERB.new(File.read(erb_filepath)).result(OpenStruct.new(data_hash).instance_eval { binding })
File.open(out_filepath, 'w') { |f| f.write(latex_render) }
