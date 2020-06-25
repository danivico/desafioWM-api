# frozen_string_literal: true
require_relative 'models/teste_model'

FactoryBot.define do
  factory :registered_model, class: UserModel do
    id { 0 }
  end

  after(:build) do |maker|
    maker.id = 1
    # ApiTest.model(maker.id)
  end
end