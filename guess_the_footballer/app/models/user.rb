class User < ActiveRecord::Base
  
  validates :username, :presence => true
  
  def new
    @user = User.new
  end
  
end
