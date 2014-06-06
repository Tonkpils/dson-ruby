describe DSON do

  it 'parses an empty DSON object into an empty hash' do
    empty_dson = "such wow"
    expect(DSON.parse(empty_dson)).to eq({})
  end

end
