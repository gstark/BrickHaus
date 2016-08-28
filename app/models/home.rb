class Home < ApplicationRecord
  belongs_to :agent, class_name: "User", optional: true
  belongs_to :owner, class_name: "User"
  has_many :links

  accepts_nested_attributes_for :links,
                                allow_destroy: true,
                                reject_if: :all_blank

  # Refile home image
  attachment :main_image
  attachment :additional_image

  def user_authorized?(asking_user)
    owner == asking_user || agent == asking_user
  end
end
