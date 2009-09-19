require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))


Then /^I should see a "([^\"]*)" button$/ do |button_name|
  begin
    webrat.current_scope.find_button(button_name)
  rescue Webrat::NotFoundError
    false
  end
end
