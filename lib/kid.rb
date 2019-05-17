require_relative './dance_module.rb'
require_relative './class_methods_module.rb'

class Kid 
   # include Dance # "include" is just lending methods as instance methods
   # extend MetaDancing # "extend" allows us to lend methods as class methods to another file

   # The above method works but is messy, so instead we combine our methods into a single file and call with the following commands
   extend FancyDance::ClassMethods
   include FancyDance::InstanceMethods
   # :: references the parent child relation ship between the parent module and the child module
   #  whilst :: simply allows the parent to have access to all constants and methods inside the child class without associating on a type level. < creates an implication that the parent is a type of the child.

   attr_accessor :name

   def initialize(name)
      @name = name
   end

end