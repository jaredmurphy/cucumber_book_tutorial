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

CAPTURE_A_NUMBER = Transform /^\d+$/ do |number|
    number.to_i
end

Given(/^I have deposited \$(#{CAPTURE_A_NUMBER}) in my account$/) do |amount|
    my_account = Account.new
    my_account.deposit(amount)
    my_account.balance.should eq(amount)
        "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When(/^I request \$(#{CAPTURE_A_NUMBER})$/) do |amount|
    pending('How to simulate cash being requested')
end

Then(/^\$(#{CAPTURE_A_NUMBER}) should be dispensed$/) do |amount|
    pending('How to validate that cash was dispensed')
end
