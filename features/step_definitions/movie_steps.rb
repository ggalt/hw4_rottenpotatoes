# movie_steps.rb for hw4_rottenpotatoes
# ggalt

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
      Movie.create!(movie)
  end
end

Then /^the director of (.*) should be (.*)/ do |movie_el, director_el|
  (page.body.to_s =~ /Details about #{movie_el}/)!=nil and (page.body.to_s =~/Director: #{director_el}/)!=nil
end

# Then /^I should see "'(.*)' has no director info"/ do |movie|
  # (page.body.to_s =~ /'#{movie}' has no director info)/)!=nil
# end
