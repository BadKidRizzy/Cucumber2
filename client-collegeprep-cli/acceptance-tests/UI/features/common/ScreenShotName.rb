#  /**
#   * @author farid.zadeh
#   *
#   */
class ScreenShotName
  def self.take_screenshot_name(scenario)
    temp_location = nil
    
    begin
      temp_location = scenario.location
    rescue NoMethodError
      temp_location = scenario.scenario_outline.location
    end
    
    # path = File.expand_path('../../pages', __FILE__)
    screenshot_dir = 'screenshot'
    
    unless Dir.exists?(screenshot_dir)
        Dir.mkdir screenshot_dir
    end

    screenshot_name = "#{temp_location}".gsub! ':', '_'
    screenshot_name = screenshot_name.gsub! 'features', screenshot_dir
    p screenshot_name = screenshot_name + ".png"
    
    return screenshot_name
  end
end
