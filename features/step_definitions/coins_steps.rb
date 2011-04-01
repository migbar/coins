Given /^the following coins:$/ do |table|
  @start = count_heads(table)
end

When /^someone makes (\d+) flips?$/ do |number_of_flips|
  @start += number_of_flips.to_i
end

When /^the visible coins are:$/ do |table|
  @result = count_heads(table)
end

Then /^the hidden coin should be "([^"]*)"$/ do |guess|
  actual = (@start + @result).odd? ? "head" : "tail"          
  actual.should == guess
end                          

def count_heads(table)
  table.hashes.inject(0) do |sum, hash|
    sum + (hash["position"] =~ /head/i ? 1 : 0)
  end  
end