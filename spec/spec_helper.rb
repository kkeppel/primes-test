RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect, :should_receive]
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :should
  end
end