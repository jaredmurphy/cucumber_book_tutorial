module KnowsMyAccount
    def my_account
        @my_account ||= Account.new
    end
end

World(KnowsMyAccount)

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

class Teller 
    def withdraw_from(account, amount)
    end
end

CAPTURE_CASH_AMOUNT = Transform /^\d+$/ do |number|
    number.to_i
end

Given(/^I have deposited \$(#{CAPTURE_CASH_AMOUNT}) in my account$/) do |amount|
    @my_account = Account.new
    @my_account.deposit(amount)
    @my_account.balance.should eq(amount),
        "Expected the balance to be #{amount} but it was #{my_account.balance}"
end

When(/^I withdraw \$(#{CAPTURE_CASH_AMOUNT})$/) do |amount|
    teller = Teller.new
    teller.withdraw_from(@my_account, amount)
end

Then(/^\$(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/) do |amount|
    pending('How to validate that cash was dispensed')
end
