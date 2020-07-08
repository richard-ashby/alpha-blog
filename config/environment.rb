# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Disable field_with_errors output which messes up the partial form layout on error
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end
