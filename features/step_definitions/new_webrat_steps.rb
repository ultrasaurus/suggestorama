require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))


Then /^I should see a "([^\"]*)" button$/ do |button_name|
  webrat.current_scope.find_button(button_name)
end

Then /^I should see a "([^\"]*)" link$/ do |link_name|
  webrat.current_scope.find_link(link_name)
end
