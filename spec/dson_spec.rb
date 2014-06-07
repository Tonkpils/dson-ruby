describe DSON do

  it 'parses an empty DSON object into an empty hash' do
    empty_dson = 'such wow'
    expect(DSON.parse(empty_dson)).to eq({})
  end

  it 'parses an empty DSON array into an empty array' do
    empty_ary = 'so many'
    expect(DSON.parse(empty_ary)).to eq([])
  end

  it 'parses a key value pair' do
    expect(DSON.parse('such "foo" is "bar" wow')).to eq({"foo" => "bar"})
  end

  it 'parses an key with array' do
    dson_ary = 'such "foo" is so "bar" next "baz" next "fizzbuzz" many wow'
    expect(DSON.parse(dson_ary)).to eq({"foo" => ["bar", "baz", "fizzbuzz"]})
  end

  it 'parses exponential value' do
    exponent = 'such "foo" is 42very3 wow'
    expect(DSON.parse(exponent)).to eq({"foo" => 42e3})
  end

end
