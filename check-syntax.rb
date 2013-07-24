#!/usr/bin/env ruby
STDERR.puts RUBY_DESCRIPTION
result = true
Dir.glob("**/*.[nr]b") do |filename|
  STDERR.print "#{filename}: "
  result &&= system("ruby", "-cw", filename)
end
exit(result)
