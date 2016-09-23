class User < ApplicationRecord
  has_many :members, class_name: "User", foreign_key: "supervisor_id"
  has_many :notes

  has_many :participants, through: :notes

  belongs_to :supervisor, class_name: "User", optional: true

  validates :contact_number, presence: true
  validates :username, presence: true
  validates :email, presence: true
  validates :full_name, presence: true
  validates :password, presence: true
  #validates :team_id, numericality: true
end
