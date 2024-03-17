class Customer < ApplicationRecord
  has_one_attached :image
  validates :fullname, :phonenumber, :notes, presence: true
  validates :notes, length: { maximum: 500 }

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email", "fullname", "id", "id_value", "notes", "phonenumber", "updated_at"]
  end

end
