module Wrappable
  
  def wrappers
    @wrappers ||= []
  end

  def wrap(mod)
    wrappers << mod
  end

  def new(*arguments, &block)
    instance = allocate
    wrappers.each { |mod| instance.singleton_class.include(mod) }
    instance.send(:initialize, *arguments, &block)
    instance
  end
end
