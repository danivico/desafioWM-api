# frozen_string_literal: true

describe 'get' do
  
  context 'quando buscar por fabricantes' do
    let(:result) { ApiTest.maker}
    it { expect(result.response.code).to eql '200'}
    puts result.body
  end
  context 'quando buscar por um modelo' do
    let(:result) { ApiTest.model(1) }
    it { expect(result.response.code).to eql '200' }
  end
  context 'quando buscar por uma versão' do
    let(:result) { ApiTest.version(1) }
    it { expect(result.response.code).to eql '200' }
  end
  context 'quando buscar por um veículo' do
    let(:result) { ApiTest.vehicles(1) }
    it { expect(result.response.code).to eql '200' }
  end

  context 'quando buscar id de fabricante diferente de número' do
    let(:result) { ApiTest.model('g') }
    it { expect(result.response.code).to eql '400' }
    it { expect(result.parsed_response['Message']).to eql 'The request is invalid.' }
    puts result.response.body
  end

  context 'quando buscar id de modelo diferente de número' do
    let(:result) { ApiTest.version('g') }
    it { expect(result.response.code).to eql '400' }
    it { expect(result.parsed_response['Message']).to eql 'The request is invalid.' }
  end

  context 'quando buscar página diferente de número' do
    let(:result) { ApiTest.vehicles('g') }
    it { expect(result.response.code).to eql '400' }
    it { expect(result.parsed_response['Message']).to eql 'The request is invalid.' }
  end
end
