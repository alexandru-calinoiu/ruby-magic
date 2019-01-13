require 'erb'

x = 1

def y
    2
end

template = ERB.new("x is <%= x %>, y() returns <%= y %>, self is `<%= self %>``")
p template.result(binding)