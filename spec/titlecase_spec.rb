require('rspec')
require('titlecase')

describe('titlecase') do
  it("returns a word in title case") do
    titlecase("word").should(eq("Word"))
  end

  it("returns multiple words in title case") do
    titlecase("monkey sharks").should(eq("Monkey Sharks"))
  end

  it("if any known conjuctions do not begin a string of words, return lowercase") do
    titlecase("for dogs or cats").should(eq("For Dogs or Cats"))
  end

  it("if any word is written in different cases, return in titlecase") do
    titlecase("hammErs and ScreWDrivers").should(eq("Hammers and Screwdrivers"))
  end
end
