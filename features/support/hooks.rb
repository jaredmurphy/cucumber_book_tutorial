Before do |scenario|
    puts "Starting scenario: #{scenario.name}"
end

After do |scenario|
    save_and_open_page if scenario.failed?
end
