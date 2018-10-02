module Wrappable
  
  def inherited_wrappers
    ancestors.grep(Wrappable).reverse.flat_map(&:wrappers)
  end

  def wrappers
    @wrappers ||= []
  end

  def wrap(mod)
    wrappers << mod
  end

  def new(*arguments, &block)
    instance = allocate
    inherited_wrappers.each { |mod| instance.singleton_class.include(mod) }
    instance.send(:initialize, *arguments, &block)
    instance
  end
end
