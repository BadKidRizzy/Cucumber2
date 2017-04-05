class TableUtiity

	def self.colmun_case_cam(table_element, column_number, expected_name)
    per_page = 0
    per_page = table_element.rows-1
    for i in 1..per_page
      begin
        table_cell = table_element[i][column_number]
        table_cell = table_cell.text
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
      # return true if table_cell == expected_name.upcase
      return true if table_cell.casecmp(expected_name) == 0
    end
  	return false
  end

  def self.whole_colmun_included_cityState_array(table_element, column_number, expected_names)
    per_page = 0
    per_page = table_element.rows-1
    result = []
    for i in 1..per_page
      begin
        table_cell = table_element[i][column_number]
        table_cell = table_cell.text.upcase
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
  
      result = result | [table_cell] unless expected_names.include? table_cell
    end
    return result
  end

  def self.whole_colmun_included_state(table_element, column_number, expected_name)
    per_page = 0
    per_page = table_element.rows-1
    result = []
    name_array = []
    for i in 1..per_page
      begin
        table_cell = table_element[i][column_number]
        table_cell = table_cell.text.upcase.split(',')[1].strip
        # p name_array = table_cell.split(',')[1]
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
  
      result = result | [table_cell] unless expected_name.include? table_cell
    end
    return result
  end

  def self.whole_colmun_eq_greater_tuition(table_element, column_number, minimum)
    per_page = 0
    per_page = table_element.rows-1
    result = []
    name_array = []
    for i in 1..per_page
      begin
        table_cell = table_element[i][column_number]
        table_cell = table_cell.text.split('$')[1]
        table_cell = table_cell.gsub(',', '')
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
  
      result = result | [table_cell] unless table_cell.to_i >= minimum.to_i
    end
    return result
  end

  def self.whole_colmun_less_eq_tuition(table_element, column_number, maximum)
    per_page = 0
    per_page = table_element.rows-1
    result = []
    name_array = []
    for i in 1..per_page
      begin
        table_cell = table_element[i][column_number]
        table_cell = table_cell.text.split('$')[1]
        table_cell = table_cell.gsub(',', '')
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
  
      result = result | [table_cell] unless table_cell.to_i <= maximum.to_i 
    end
    return result
  end

  def self.whole_colmun_between_tuition(table_element, column_number, minimum, maximum)
    per_page = 0
    per_page = table_element.rows-1
    result = []
    name_array = []
    for i in 1..per_page
      begin
        table_cell = table_element[i][column_number]
        table_cell = table_cell.text.split('$')[1]
        table_cell = table_cell.gsub(',', '')
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
  
      result = result | [table_cell] unless (table_cell.to_i >= minimum.to_i) && (table_cell.to_i <= maximum.to_i)
    end
    return result
  end

  def self.getTextForMatchNameCol(table_element, col_num, expected_name)
    per_page = 0
    per_page = table_element.rows-1
    for i in 0..per_page
      begin
        table_cell = table_element[i][1]
        table_cell = table_cell.text
        ix = i
        break if table_cell.casecmp(expected_name) == 0
      rescue
        body = table_element.text
        error_msg = "Unable to locate element, using {:index=>#{i} :table size=> #{per_page} \n result(s): \n #{body}"
        fail error_msg
      end
    end
    table_cell = table_element[ix][col_num]
    table_cell = table_cell.text
    return table_cell
  end

  def self.valueRowCol(table, row, col)
    col = col-1 if col.class == Fixnum
    row = row+1 if row.class == Fixnum
    return table[row][col].text
  end

  def self.valuesRow(table, row)
    row = row+1 if row.class == Fixnum
    return table[row].text.strip #.split(" ")
  end

  def self.valuesRowAsArray(table, row_num)
    row_num = row_num-1 if row_num.class == Fixnum
    table_elements = table
    table_cell_array = []
    per_page = 0
    i =0
    look_for_col = true
    while look_for_col do

      begin
        table_cell = table_elements[row_num][i]
        table_cell = table_cell.text
        table_cell_array = table_cell_array + [table_cell]
      rescue
        # skip
        look_for_col = false
      end
      i +=1
    end
    return table_cell_array
  end

  def self.valuesCol(table, col)
    col = col-1 if col.class == Fixnum
    table_elements = table
    table_cell_array = []
    per_page = 0
    per_page = table_elements.rows-1

    for i in 1..per_page

      begin
        table_cell = table_elements[i][col]
        table_cell = table_cell.text
        table_cell_array = table_cell_array + [table_cell]
      rescue
        # skip
      end
    end
    return table_cell_array
  end
end

