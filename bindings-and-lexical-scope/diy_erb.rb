class DiyErb
    def initialize(template)
        @template = template
    end

    def result(binding)
        @template.gsub(/<%=(.+?)%>/) do
            binding.eval($1)
        end
    end
end

x = 1

def y
    2
end

template = DiyErb.new("x is <%= x %>, y() returns <%= y %>, self is `<%= self %>`")
p template.result(binding)