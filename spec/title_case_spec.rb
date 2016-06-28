require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a single word") do
    expect(("hamlet").title_case()).to(eq("Hamlet"))
  end

  it("capitalizes the first letter of a multiple word string") do
    expect(("hamlet lives").title_case()).to(eq("Hamlet Lives"))
  end

  it("does not capitalize the first letter of articles, prepositions, or coordinating conjunctions") do
    expect(("hamlet has a sandwich").title_case()).to(eq("Hamlet Has a Sandwich"))
  end

  it("capitalizes the first letter of articles, prepositions, or coordinating conjunctions if they are the first word") do
    expect(("a hamlet mystery").title_case()).to(eq("A Hamlet Mystery"))
  end

  it("converts all uppercase entries or mixed case to proper case") do
    expect(("A HAMLET MYSTERY").title_case()).to(eq("A Hamlet Mystery"))
  end

  it("converts all uppercase entries or mixed case to proper case") do
    expect(("A HaMLeT MYsteRY").title_case()).to(eq("A Hamlet Mystery"))
  end
end
