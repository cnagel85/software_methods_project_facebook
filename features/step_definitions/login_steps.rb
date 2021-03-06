Given /(?:I|Foobar) (?:have|has) an account/ do
	foobar = User.create({:first_name => "Foo",
							 	:last_name => "Bar",
								:email => "foobar@example.com",
								:password => "testing",
								:password_confirmation => "testing"})
	foobar.save!
end

Given /^I have a friend/ do
  foobar = User.create({:first_name => "My",
                        :last_name => "Friend",
                        :email => "myfriend@example.com",
                        :password => "testing",
                        :password_confirmation => "testing"})
  foobar.save!
end

Given /(?:I|Foobar) (?:have|has) a micropost/ do
  foobar = User.find_by_email("foobar@example.com")
  foobar.microposts.create!([:wall_id => foobar.wall.id, :content => "a micropost"])
end

When /I visit (?:my|Foobar's) user page/ do
  foobar = User.find_by_email("foobar@example.com")
  visit user_path(foobar)
end


