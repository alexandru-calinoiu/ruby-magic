require_relative 'wrappable'
require_relative 'powered'
require_relative 'bird'

class Machine
  extend Wrappable

  wrap Powered

  def make_noise
    puts 'Buzzz'
  end
end

p Wrappable.instance_variables
p Bird.instance_variables
p Machine.instance_variables

p '-----------'

machine = Machine.new
machine.make_noise

p '-----------'

bird = Bird.new
bird.make_noise
