#  /**
#   * @author farid.zadeh
#   *
#   */
class WaitUtility
  def self.wait_until_page_loaded(timeout=TIME_OUT_LIMIT)
    BROWSER.wait
    # Watir::Wait.until(timeout) { BROWSER.ready_state.eql? "complete" }
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until { BROWSER.ready_state.eql? "complete" }
  end

  def self.waitWhileSpinnerPresent(timeout=TIME_OUT_LIMIT)
    spinner = BROWSER.i(:css => '.icon-cycle.spin.fades.display')
    
    spinner.wait_while_present(timeout)
  end

  def self.wait_untill_elements_size_steadied(timeout=TIME_OUT_LIMIT)
    @old_size = 0
    BROWSER.wait
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until { elements_size_steadied? }
  end

  def self.waitUntillTableSteadied(timeout=TIME_OUT_LIMIT)
    @old_size = 0
    BROWSER.wait
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until { table_size_steadied? }
  end

end

def elements_size_steadied?
  current_ele = BROWSER.element.html
  current_size = current_ele.size
  if @old_size == current_size && current_size > 0
    sleep 0.2
    return true
  else
    @old_size = current_size
  end
  return false
end

def table_size_steadied?
  current_ele = BROWSER.elements(:css, "a[href*='/detail/jobs']")
  current_size = current_ele.size
  if @old_size == current_size && current_size > 0
    sleep 0.3
    return true
  else
    @old_size = current_size
  end
  return false
end



