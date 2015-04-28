4.times do |index|
  User.create!({
    username: "user#{index}",
    email: "user#{index}@domain.com",
    picture: "image#{index}.jpg",
    website: 'http://www.wearegap.com',
    password: 'testpass23',
    password_confirmation: 'testpass23'
    })
end

# Users without website
4.times do |index|
  User.create!({
    username: "no_website_user#{index}",
    email: "user_without_website#{index}@domain.com",
    picture: "image#{index}.jpg",
    website: "invalid website#{index} dot com",
    password: 'testpass23',
    password_confirmation: 'testpass23'
    })
end

# Users without picture
4.times do |index|
  User.create!({
    username: "no_picture_user#{index}",
    email: "user_without_picture#{index}@domain.com",
    picture: '',
    website: 'http://www.wearegap.com',
    password: 'testpass23',
    password_confirmation: 'testpass23'
    })
end

