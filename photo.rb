class Photo
  attr_accessor :comment
  @@all = []

  def self.all
    @@all
  end

  def initialize
    @@all << self
  end

  def user = (user)
    # attempt at setting the user from the photo instance through the Comment joiner class - very yucky
    Comment.new(self, user, message)
  end

end # end Photo class
