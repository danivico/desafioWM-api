# frozen_string_literal: true

require 'httparty'
require 'factory_bot'
require 'rspec'

require_relative 'factories'
require_relative 'services/test'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  # config.disable_monkey_patching!
  config.warnings = true
  config.default_formatter = 'doc'

  # if config.files_to_run.one?

    # config.profile_examples = 10
    # config.order = :random
    # Kernel.srand config.seed
  # end
  config.include FactoryBot::Syntax::Methods
end
