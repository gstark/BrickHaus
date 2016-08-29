class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Refile profile image for agents
  attachment :profile_image

  # Adding a scope for agents
  scope :agents, -> { where(is_agent: true)}
end
