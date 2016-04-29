class Account
    def initialize(amount)
    end
end

Given(/^I have deposited \$(\d+) in my account$/) do |amount|
    Account.new(amount.to_i)
end

When(/^I request \$(\d+)$/) do |amount|
    pending('How to simulate cash being requested')
end

Then(/^\$(\d+) should be dispensed$/) do |amount|
    pending('How to validate that cash was dispensed')
end
