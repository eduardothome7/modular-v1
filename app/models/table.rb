class Table < ApplicationRecord
  def columns
  	JSON.parse(fields)
  end
end
