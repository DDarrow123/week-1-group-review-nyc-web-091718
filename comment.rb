class Comment
  attr_accessor :photo, :user, :message
  @@all = []

  def initialize(photo, user, message = "new comment")
    @photo = photo
    @user = user
    @message = message

    @@all << self
  end

end
