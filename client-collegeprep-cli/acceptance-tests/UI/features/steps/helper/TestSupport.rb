class TestSupport
  
  def next_disable?
    next_disable = false
    @page_object = PageObjectHomeRelated.new(BROWSER)
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    # check_page_num_movement?
    
    next_butn =  @page_object.searchSchoolsPage.next_element
    next_butn_dis =  @page_object.searchSchoolsPage.nextDisabled_element

    next_disable = true if next_butn.visible? == false
    next_disable = true if next_butn_dis.exists? == true && next_butn_dis.text == "Next »"
    return next_disable
  end

  def check_page_num_movement?
    WaitUtility.wait_untill_elements_size_steadied
    page_num_movment = @page_object.searchRelated.pageNum_element.text.to_i
    if @page_num_movment_old == page_num_movment
      p "The active page is: #{page_num_movment} "
      @page_num_movment_index += 1
      fail"The page number did not increased by clicking on Next button" if @page_num_movment_index == 4
    else
      @page_num_movment_old = page_num_movment
    end
  end

  def get_values_col_for_pages(col_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    return_result =[]
    next_page_exist = true
    p_n = 1
    while next_page_exist
      table = @page_object.searchSchoolsPage.searchResults_element
      per_page = table.rows-1
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      for x in 1..per_page
        begin
          table_cell = table[x][col_name]
          return_result = return_result + [table_cell.text]
        rescue 
          return_result = return_result + ["Text Not Found"]
        end
        
      end
     
      WaitUtility.wait_untill_elements_size_steadied
       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!next_disable?)

      # if (per_page == Per_Page) || (!next_disable?)
      if (!next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.wait_untill_elements_size_steadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
    return return_result
  end

  def get_values_of_2col_for_pages(col_name1, col_name2, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    return_result =[]
    next_page_exist = true
    p_n = 1
    while next_page_exist
      table = @page_object.searchSchoolsPage.searchResults_element
      per_page = table.rows-1
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      for x in 1..per_page
        table_cell1 = table[x][col_name1]
        table_cell2 = table[x][col_name2]
        table_cell = table_cell1.text + ";" + table_cell2.text
        return_result = return_result + [table_cell]
      end
     
      WaitUtility.wait_untill_elements_size_steadied
       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!next_disable?)

      # if (per_page == Per_Page) || (!next_disable?)
      if (!next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.wait_untill_elements_size_steadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
    return return_result
  end

  def check_ascending_sort(return_result)
    per_page = return_result.size-1
    expected_result = return_result.sort 
    for i in 0..per_page
      yes = false
      break unless return_result[i] == expected_result[i]
      yes = true
    end
    yes
  end

  def check_ascending_sort_array(return_result)
    per_page = return_result.size-1
    expected_result = return_result.sort_by{|n| [n[1],n[0]]} 
    for i in 0..per_page
      yes = false
      break unless return_result[i] == expected_result[i]
      yes = true
    end
    yes
  end

  def check_descending_sort(return_result)
    per_page = return_result.size-1
    expected_result = return_result.sort

    for i in 0..per_page
      yes = false
      break unless return_result[i] == expected_result[per_page-i]
      yes = true
    end
    yes
  end

  def check_descending_sort_array(return_result)
    per_page = return_result.size-1
    expected_result = return_result.sort_by{|n| [n[1],n[0]]}

    for i in 0..per_page
      yes = false
      break unless return_result[i] == expected_result[per_page-i]
      yes = true
    end
    yes
  end

  def descending_sort(return_result)
    per_page = return_result.size-1
    expected_result = return_result.sort
    descending_result =[]

    for i in 0..per_page
      descending_result = descending_result + [expected_result[per_page-i]]
    end
    descending_result
  end

  def descending_sort_array(return_result)
    per_page = return_result.size-1
    expected_result = return_result.sort_by{|n| [n[1],n[0]]}
    descending_result =[]

    for i in 0..per_page
      descending_result = descending_result + [expected_result[per_page-i]]
    end
    descending_result
  end

  def ascending_sort_array(return_result)
    per_page = return_result.size-1
    ascending_result = return_result.sort_by{|n| [n[1],n[0]]}
    ascending_result
  end
  
end
