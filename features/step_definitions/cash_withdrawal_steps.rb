class Account
    def initialize
        @amount = 0
    end
    def deposit(amount)
        @amount += amount
    end

    def balance
        @amount
    end
end

Given(/^I have deposited \$(\d+) in my account$/) do |amount|
    my_account = Account.new
    my_account.deposit(amount.to_i)
    my_account.balance.should eq(amount.to_i)
end

When(/^I request \$(\d+)$/) do |amount|
    pending('How to simulate cash being requested')
end

Then(/^\$(\d+) should be dispensed$/) do |amount|
    pending('How to validate that cash was dispensed')
end
