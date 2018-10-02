require_relative 'wrappable'
require_relative 'logging'

class Bird
  extend Wrappable

  wrap Logging

  def make_noise
    puts 'Chirp, chirp"'
  end
end
