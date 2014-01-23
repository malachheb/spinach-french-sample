module Spinach::DSL::ClassMethods
  alias_method :Lorsque, :step
  alias_method :Quand, :step
  alias_method :Alors, :step
  alias_method :Et, :step
  alias_method :Mais, :step
end
