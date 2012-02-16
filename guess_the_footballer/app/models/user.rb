class User < ActiveRecord::Base
  
  def new
    @user = User.new
  end
  
end
