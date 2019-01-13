require_relative 'bird'
require_relative 'flying'

class Pigeon < Bird
  wrap Flying

  def make_noise
    p 'Cool!'
  end
end

p '------------'

pigeon = Pigeon.new
pigeon.make_noise
