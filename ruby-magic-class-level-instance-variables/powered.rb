module Powered
  def make_noise
    p 'Powering up'
    super
    p 'Powering down'
  end
end