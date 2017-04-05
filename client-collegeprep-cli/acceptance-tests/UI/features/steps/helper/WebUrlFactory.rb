class WebUrlFactory
	def self.web_url_factory
 		env_type = environment_variables_values()
	  web_url = env_type_factory(env_type)
	  # p "This is the web_url value: #{web_url}"
  	return web_url
  end
end

def environment_variables_values
  # p "This is the ARGV value: #{ARGV}"
  env_type = ""
  ARGV.each do|argument|

    if argument.upcase.include? "ENV"
      env_type = argument.split('=')
      env_type = env_type[1].downcase
    end

  end
  # p "This is the env_type value: #{env_type}"
  return env_type
end

def env_type_factory(env_type)
	urls = {}
	urls = urls.merge({"demo"        => "http://osdc-client-collegeprep-dev.s3-website-us-east-1.amazonaws.com"})
	urls = urls.merge({"production"  => "http://osdc-client-collegeprep-qa.s3-website-us-east-1.amazonaws.com"})
	urls = urls.merge({"test"        => "https://qaprep.pathevo.com"})
  
  unless urls[env_type] == nil
    puts "**** Running the test in #{env_type.upcase} environment *****"
    urls = urls[env_type]
  else
    puts "**** The #{env_type} environment does NOT define in the code. ****"
    puts "**** Running the test in Test environment by default*****"
    urls = urls["test"]
  end
	
	return urls
end

