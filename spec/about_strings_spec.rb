require 'spec_helper'

describe 'Strings' do
  it 'should demonstrate double quoted strings are strings' do
    string = 'Hello, World'
    expect(string.is_a?(String)).to eql __
  end

  it 'should demonstrate single quoted strings are also strings' do
    string = 'Goodbye, World'
    expect(string.is_a?(String)).to eql __
  end

  it 'should demonstrate use single quotes_to_create_string_with_double_quotes' do
    string = 'He said, "Go Away."'
    expect(string).to eql __
  end

  it 'should demonstrate use double quotes to create strings with single quotes' do
    string = "Don't"
    expect(string).to eql __
  end

  it 'should demonstrate use backslash for those hard cases' do
    a = "He said, \"Don't\""
    b = 'He said, "Don\'t"'
    expect(a == b).to eql __
  end

  it 'should demonstrate use flexible quoting to handle really hard cases' do
    a = %(flexible quotes can handle both ' and " characters)
    b = %!flexible quotes can handle both ' and " characters!
    c = %{flexible quotes can handle both ' and " characters}
    expect(a == b).to eql __
    expect(a == c).to eql __
  end

  it 'should demonstrate flexible quotes can handle multiple lines' do
    long_string = %{
It was the best of times,
It was the worst of times.
}
    expect(long_string.length).to eql __
    expect(long_string.lines.count).to eql __
  end

  it 'should demonstrate here documents can also handle multiple lines' do
    long_string = <<EOS
It was the best of times,
It was the worst of times.
EOS
    expect(long_string.length).to eql __
    expect(long_string.lines.count).to eql __
  end

  it 'should demonstrate plus will concatenate two strings' do
    string = 'Hello, ' + 'World'
    expect(string).to eql __
  end

  it 'should demonstrate plus concatenation will leave the original strings unmodified' do
    hi = 'Hello, '
    there = 'World'
    string = hi + there
    expect(hi).to eql __
    expect(there).to eql __
  end

  it 'should demonstrate plus equals will concatenate to the end of a string' do
    hi = 'Hello, '
    there = 'World'
    hi += there
    expect(hi).to eql __
  end

  it 'should demonstrate plus equals also will leave the original string unmodified' do
    original_string = 'Hello, '
    hi = original_string
    there = 'World'
    hi += there
    expect(original_string).to eql __
  end

  it 'should demonstrate the shovel operator will also append content to a string' do
    hi = 'Hello, '
    there = 'World'
    hi << there
    expect(hi).to eql __
    expect(there).to eql __
  end

  it 'should demonstrate the shovel operator modifies the original string' do
    original_string = 'Hello, '
    hi = original_string
    there = 'World'
    hi << there
    expect(original_string).to eql __

    # THINK ABOUT IT:
    #
    # Ruby programmers tend to favor the shovel operator (<<) over the
    # plus equals operator (+=) when building up strings.  Why?
  end

  it 'should demonstrate double quoted string interpret escape characters' do
    string = "\n"
    expect(string.size).to eql __
  end

  it 'should demonstrate single quoted string do not interpret escape characters' do
    string = '\n'
    expect(string.size).to eql __
  end

  it 'should demonstrate single quotes sometimes interpret escape characters' do
    string = '\\\''
    expect(string.size).to eql __
    expect(string).to eql __
  end

  it 'should demonstrate double quoted strings interpolate variables' do
    value = 123
    string = "The value is #{value}"
    expect(string).to eql __
  end

  it 'should demonstrate single quoted strings do not interpolate' do
    value = 123
    string = 'The value is #{value}'
    expect(string).to eql __
  end

  it 'should demonstrate any ruby expression may be interpolated' do
    string = "The square root of 5 is #{Math.sqrt(5)}"
    expect(string).to eql __
  end

  it 'should demonstrate you can get a substring from a string' do
    string = 'Bacon, lettuce and tomato'
    expect(string[7, 3]).to eql __
    expect(string[7..9]).to eql __
  end

  it 'should demonstrate you can get a single character from a string' do
    string = 'Bacon, lettuce and tomato'
    expect(string[1]).to eql __

    # Surprised?
  end

  it 'should demonstrate in ruby 1.9 single characters are represented by strings' do
    expect(?a).to eql __
    expect(?a == 97).to eql __
  end

  it 'should demonstrate strings can be split' do
    string = 'Sausage Egg Cheese'
    words = string.split
    expect(words).to eql [__, __, __, __]
  end

  it 'should demonstrate strings can be split with different patterns' do
    string = 'the:rain:in:spain'
    words = string.split(/:/)
    expect(words).to eql [__, __, __, __]

    # NOTE: Patterns are formed from Regular Expressions.  Ruby has a
    # very powerful Regular Expression library.  We will become
    # enlightened about them soon.
  end

  it 'should demonstrate strings can be joined' do
    words = ['Now', 'is', 'the', 'time']
    expect(words.join(' ')).to eql __
  end

  it 'should demonstrate strings are unique objects' do
    a = 'a string'
    b = 'a string'

    expect(a == b).to eql __
    expect(a.object_id == b.object_id).to eql __
  end
end
