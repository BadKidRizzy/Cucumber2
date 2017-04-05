class SetDataSignUp
  require "SetDataSignUp"
	def set_data_sign_up(table)
		table_data = {}
		table.rows.each do | key, value|
			table_data = table_data.merge({key => value}) 
		end
	# p table_data
	return table_data
   
  end
end
