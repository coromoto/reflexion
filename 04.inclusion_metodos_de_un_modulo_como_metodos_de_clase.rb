module AModule
  def a_method
    "AModule a_method"
  end
end

class AClass
  class << self
    include AModule
  end
end

p AClass.ancestors

#eigenclass_of_AClass = class << AClass; self; end
eigenclass_of_AClass = AClass.singleton_class


p eigenclass_of_AClass.ancestors

p AClass.a_method
