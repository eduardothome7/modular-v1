module TablesHelper

  def types
  	['integer', 'varchar', 'float','datetime']
  end

  def selected(type, value)
  	if type == value
  	  'selected'	
  	end
  end

  def checked?(value)
  	if value == "on"
  	  'checked'
  	end
  end

end
