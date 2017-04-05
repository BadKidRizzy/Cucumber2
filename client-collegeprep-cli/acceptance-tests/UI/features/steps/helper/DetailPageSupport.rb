class DetailPageSupport
  def compare_employment_in_detail_pages(expected_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      WaitUtility.wait_untill_elements_size_steadied
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      
      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      for x in 1..per_page
        # p x
        # p table[x-1]
        table[x-1].click
        
        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchJobsPage.emplymentPage_element.when_visible(TIME_OUT_LIMIT)
        
        begin
          return_result = @page_object.searchJobsPage.emplymentPage_element.text
        rescue
          return_result = "Not Specifieds Text"
        end
        fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase == "NOT SPECIFIEDS") || (return_result.upcase.include? expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        WaitUtility.wait_untill_elements_size_steadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      end
     
      WaitUtility.wait_untill_elements_size_steadied
       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
  end

  def compare_jobName_and_employment_in_detail_pages(expected_job, expected_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      WaitUtility.wait_untill_elements_size_steadied
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      
      for x in 1..per_page
        # p x
        job_name = table[x-1].text
        # p job_name.include? expected_job
        fail "At line #{x} page #{p_n}\nExpected: #{expected_job}\n Got: #{job_name}" unless job_name.upcase.include? expected_job.upcase

        table[x-1].click

        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchJobsPage.emplymentPage_element.when_visible(TIME_OUT_LIMIT)

        begin
          return_result = @page_object.searchJobsPage.emplymentPage_element.text
        rescue
          return_result = "Not Specifieds Text"
        end
        
        fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase == "NOT SPECIFIEDS") || (return_result.upcase.include? expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        WaitUtility.wait_untill_elements_size_steadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      end
     
      WaitUtility.wait_untill_elements_size_steadied       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
  end

  def compare_education_in_detail_pages(expected_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      
      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      for x in 1..per_page
        p x
        # p table[x-1]
        table[x-1].click
        
        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchJobsPage.educationPage_element.when_visible(TIME_OUT_LIMIT)
        
        begin
          p return_result = @page_object.searchJobsPage.educationPage_element.text
        rescue
          return_result = "Not Specifieds Text"
        end
        fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase == expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      end
     
      WaitUtility.wait_untill_elements_size_steadied
       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
  end

  def compare_jobName_and_education_in_detail_pages(expected_job, expected_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      WaitUtility.wait_untill_elements_size_steadied
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      
      for x in 1..per_page
        # p x
        job_name = table[x-1].text
        # p job_name.include? expected_job
        fail "At line #{x} page #{p_n}\nExpected: #{expected_job}\n Got: #{job_name}" unless job_name.upcase.include? expected_job.upcase

        table[x-1].click

        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchJobsPage.educationPage_element.when_visible(TIME_OUT_LIMIT)

        begin
          return_result = @page_object.searchJobsPage.educationPage_element.text
        rescue
          return_result = "Not Specifieds Text"
        end
        
        fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase == "NOT SPECIFIEDS") || (return_result.upcase.include? expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      end
     
      WaitUtility.wait_untill_elements_size_steadied       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
  end

  #-------------
  def compare_industry_in_detail_pages(expected_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      sleep 5
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      
      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      for x in 1..per_page
        p x
        # p table[x-1]
        table[x-1].click
        
        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchJobsPage.industryPage_element.when_visible(TIME_OUT_LIMIT)
        
        begin
          p return_result = @page_object.searchJobsPage.industryPage_element.text
        rescue
          return_result = "Not Specifieds Text"
        end
        fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase.include? expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      end
     
      WaitUtility.wait_untill_elements_size_steadied
       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
  end

  def compare_jobName_and_industry_in_detail_pages(expected_job, expected_name, page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      WaitUtility.wait_untill_elements_size_steadied
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      
      for x in 1..per_page
        # p x
        job_name = table[x-1].text
        # p job_name.include? expected_job
        fail "At line #{x} page #{p_n}\nExpected: #{expected_job}\n Got: #{job_name}" unless job_name.upcase.include? expected_job.upcase

        table[x-1].click

        @page_object.searchJobsPage.industryPage_element.when_visible(TIME_OUT_LIMIT)
        WaitUtility.wait_untill_elements_size_steadied

        begin
          return_result = @page_object.searchJobsPage.industryPage_element.text
        rescue
          return_result = "Not Specifieds Text"
        end
        
        fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase.include? expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      end
     
      WaitUtility.wait_untill_elements_size_steadied       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
  end

  def get_all_job_related_data_from_record_and_detail_pages(page_num='ALL')
    @page_object = PageObjectHomeRelated.new(BROWSER)
    next_page_exist = true
    jobs_info =[]
    p_n = 1
    test_support = TestSupport.new
    @page_num_movment_old ||= 1
    @page_num_movment_index ||= 1
    while next_page_exist
      WaitUtility.waitUntillTableSteadied
      WaitUtility.wait_untill_elements_size_steadied
      table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
      table_info = @page_object.searchSchoolsPage.searchResults_element

      per_page = table.size
      p "***** Wait .... Reading the results ****"
      p "Page Number: #{p_n}"
      
      for x in 1..per_page
        # p "*"*80
        # p x
        job_info = {"name" => table_info[x]["Job Name"].text, "location" => table_info[x]["Location"].text, "pay" => table_info[x]["Pay"].text, "posted" => table_info[x]["Posted"].text}
        # p job_info
        table[x-1].click

        WaitUtility.wait_untill_elements_size_steadied
        @page_object.searchJobsPage.row3Page_element.when_visible(TIME_OUT_LIMIT)
        WaitUtility.wait_untill_elements_size_steadied
        
        result = @page_object.searchJobsPage.row3Page_element.text
        result = result.split("\n")
        # result1 = @page_object.searchJobsPage.emplymentPage_element.text
        # result2 = @page_object.searchJobsPage.educationPage_element.text
        # result3 = @page_object.searchJobsPage.experiencePage_element.text
        # result4 = @page_object.searchJobsPage.industryPage_element.text
        job_info = job_info.merge({"employment" => result[2], "education" => result[4], "experince" => result[6], "industry" => result[8]})
        # p job_info
        job_info.keys.each do |key|
          if job_info[key].nil?
          job_info[key] = '' 
          else 
            job_info[key] = job_info[key].strip
          end
        end
        jobs_info = jobs_info + [job_info]
        # p jobs_info
        # fail "At line #{x} page #{p_n}\nExpected: #{expected_name}\n Got: #{return_result}" unless (return_result.upcase.include? expected_name.upcase)
        BROWSER.back
        WaitUtility.waitUntillTableSteadied
        table = BROWSER.elements(:css, ".media h5 a[href*='/detail/jobs']")
        table_info = @page_object.searchSchoolsPage.searchResults_element
      end
     
      WaitUtility.wait_untill_elements_size_steadied       
      fail "Expected results per page:#{Per_Page} \n Got: #{per_page} " if (per_page < Per_Page) && (!test_support.next_disable?)

      if (!test_support.next_disable?)
        if (page_num.upcase != 'ALL') && (p_n == page_num.to_i)
          next_page_exist = false 
        else
          check_page_num_movement?
          @page_object.searchSchoolsPage.next_element.when_present(TIME_OUT_LIMIT).click
          
          WaitUtility.waitUntillTableSteadied
        end
      else
        next_page_exist = false
      end
      p_n +=1
    end
    return jobs_info
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
 
end
