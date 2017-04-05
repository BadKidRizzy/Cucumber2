#  /**
#   * @author farid.zadeh
#   *
#   */
class WebDriverFactory
  def self.web_driver_factory
    browser_type_path = environment_variables_values?
    browser_type = browser_type_path["BTYPE"]
    browser_path = browser_type_path["BPATH"]
    browser = browser_type(browser_type, browser_path)
    return browser
  end

  def self.screen_shot
    return @screen_shot
  end
end

def environment_variables_values?
  # p ARGV
  browser_type_path = {}
  @screen_shot = true
  ARGV.each do|argument|
  # puts "Argument: #{argument}"
    if argument.upcase.include? "BTYPE"
      browser_type = argument.split('=')
      browser_type_path = browser_type_path.merge({"BTYPE" => browser_type[1].upcase})
    elsif argument.upcase.include? "BPATH"
      browser_path = argument.split('=')
      browser_type_path = browser_type_path.merge({"BPATH" => browser_path[1]})
    elsif argument.upcase.include? "SCREEN=OFF"
      @screen_shot = false
    end
  end
  return browser_type_path
end

def browser_type(b_type, b_path)
  case b_type
    when 'CHROME'
      puts '***** Running Chrome ******'
      browser ||= Watir::Browser.new :chrome
    when 'IE'
      puts '***** Running IE **********'
      browser ||= Watir::Browser.new :ie
    when 'FIREFOX'
      puts '***** Running Firefox *****'
      browser ||= Watir::Browser.new :firefox
    else
      puts '***** Running Chrome ******'
      browser ||= Watir::Browser.new :chrome
  end
  return browser
end
