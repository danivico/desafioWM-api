# frozen_string_literal: true

class ApiTest
  include HTTParty

  base_uri 'http://desafioonline.webmotors.com.br/api/OnlineChallenge/'
  headers 'Content-Type' => 'application/json'

  def self.maker
    get('/Make')
  end

  def self.model(make_id)
    get('/Model?MakeID=' + make_id.to_s)
  end

  def self.version(model_id)
    get('/Version?ModelID=' + model_id.to_s)
  end

  def self.vehicles(page)
    get('/Vehicles?Page=' + page.to_s)
  end
end
