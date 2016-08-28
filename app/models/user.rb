class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Refile profile image for agents
  attachment :profile_image

  def user_authorized?(asking_user)
    id == asking_user.id
  end
end
