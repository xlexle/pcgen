# Fixtures are sample data for testing.
#
# Fixtures are unordered. For ordered fixtures, use omap YAML type. Ordered
# fixtures are needed when you have foreign key constraints on keys in the same
# table. common with tree structures.
#
# test_helper.rb will load all of your fixtures into the test database.
#
# Read more: http://api.rubyonrails.org/classes/ActiveRecord/FixtureSet.html

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
