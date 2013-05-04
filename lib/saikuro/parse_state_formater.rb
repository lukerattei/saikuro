require "json"

module Saikuro
  class ParseStateFormater < BaseFormater

    def start(new_out=nil)
      reset_data
      @out = new_out if new_out
      @defs = Array.new
    end

    def end
      @out.puts @defs.to_json
    end

    def start_class_compute_state(type_name,name,complexity,lines)
      @current = name
    end

    def end_class_compute_state(name)
    end

    def def_compute_state(name,complexity,lines)
      @defs.push({:name => name, :complexity => complexity, :lines => lines})
    end

  end
end

