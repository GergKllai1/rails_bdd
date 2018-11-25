Given("the following articles exists") do |table|
    table.hashes.each do |article|
        Article.create!(article)
    end
end  

When("I visit the site") do
    visit root_path
end

When("I click {string}") do |link|
    click_on link
end


When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Given("show me the page") do
    save_and_open_page
end
