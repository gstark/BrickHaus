class Home < ApplicationRecord
  belongs_to :agent, class_name: "User", optional: true
  belongs_to :owner, class_name: "User"

  # Refile home image
  attachment :main_image
  attachment :additional_image
end
