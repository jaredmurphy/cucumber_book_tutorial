
Given /^I have deposited (#{CAPTURE_CASH_AMOUNT}) in my account$/ do |amount|
  my_account.credit(amount)
end

And(/^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do |balance|
    my_account.balance.should eq(balance), 
        "Expected the balance to be #{balance} but it was #{my_account.balance}"
end


