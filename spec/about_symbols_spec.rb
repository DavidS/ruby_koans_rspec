require 'spec_helper'

describe 'Symbols' do
  it 'should demonstrate symbols are symbols' do
    symbol = :ruby
    expect(symbol.is_a?(Symbol)).to eql __
  end

  it 'should demonstrate symbols can be compared' do
    symbol1 = :a_symbol
    symbol2 = :a_symbol
    symbol3 = :something_else

    expect(symbol1 == symbol2).to eql __
    expect(symbol1 == symbol3).to eql __
  end

  it 'should demonstrate identical symbols are a single internal object' do
    symbol1 = :a_symbol
    symbol2 = :a_symbol

    expect(symbol1 == symbol2).to eql __
    expect((symbol1.object_id == symbol2).object_id).to eql __
  end

  it 'should demonstrate method names become symbols' do
    symbols_as_strings = Symbol.all_symbols.map { |x| x.to_s }
    expect(symbols_as_strings.include?('to_s')).to eql __
  end

  # THINK ABOUT IT:
  #
  # Why do we convert the list of symbols to strings and then compare
  # against the string value rather than against symbols?

  RubyConstant = 'What is the sound of one hand clapping?'

  it 'should demonstrate constants become symbols' do
    all_symbols = Symbol.all_symbols

    expect(all_symbols.include?(__)).to eql __
  end

  it 'should demonstrate symbols can be made from strings' do
    string = 'catsAndDogs'
    expect(string.to_sym).to eql __
  end

  it 'should demonstrate symbols with spaces can be built' do
    symbol = :"cats and dogs"

    expect(symbol).to eql __.to_sym
  end

  it 'should demonstrate symbols with interpolation can be built' do
    value = 'and'
    symbol = :"cats #{value} dogs"

    expect(symbol).to eql __.to_sym
  end

  it 'should demonstrate to_s is called on interpolated symbols' do
    symbol = :cats
    string = "It is raining #{symbol} and dogs."

    expect(string).to eql __
  end

  it 'should demonstrate symbols are not strings' do
    symbol = :ruby
    expect(symbol.is_a?(String)).to eql __
    expect(symbol.eql?('ruby')).to eql __
  end

  it 'should demonstrate symbols do not have string methods' do
    symbol = :not_a_string
    expect(symbol.respond_to?(:each_char)).to eql __
    expect(symbol.respond_to?(:reverse)).to eql __
  end

  # It's important to realize that symbols are not "immutable
  # strings", though they are immutable. None of the
  # interesting string operations are available on symbols.

  it 'should demonstrate symbols cannot be concatenated' do
    # Exceptions will be pondered further down the path
    expect(:cats + :dogs).to raise_error(__)
  end

  it 'should demonstrate symbols can be dynamically created' do
    expect(('cats' + 'dogs').to_sym).to eql __
  end

  # THINK ABOUT IT:
  #
  # Why is it not a good idea to dynamically create a lot of symbols?
end
