ARGV.concat [ "--readline", "--prompt-mode", "simple" ]
require 'irb/completion'
require 'irb/ext/save-history'
require 'rubygems'
require 'map_by_method'
require 'wirble'
require "ap" # doesnt actualy work right with rails 2.2.2 AR objects :(

IRB.conf[:AUTO_INDENT]= true
IRB.conf[:SAVE_HISTORY] = 600
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-save-history"

Wirble.init
Wirble.colorize

unless IRB.version.include?('DietRB')
 IRB::Irb.class_eval do
   def output_value
     ap @context.last_value
   end
 end
else # MacRuby
 IRB.formatter = Class.new(IRB::Formatter) do
   def inspect_object(object)
     object.ai
   end
 end.new
end
