# QUESTION 3
# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

# GROUP DISCUSSION RESULTS
# the User & Photo class have the many-to-many relationship
# the Comment class is the joiner class
# this example is requiring Photo to directly access the User and actually set a User. This would be a separate one User to many Photos relationship.
# it doesn't make sense that a photo is making a comment.

require 'pry'

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
user.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
