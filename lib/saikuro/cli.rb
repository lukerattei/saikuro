module Saikuro
  class CLI

  def run

  state_formater = ParseStateFormater.new(STDOUT)

  Saikuro.analyze($<, state_formater)

  end #end run
  end #class CLI
end
