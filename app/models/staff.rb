class Staff < ApplicationRecord
  has_and_belongs_to_many :movies, join_table: :movies_staffs
  validates :name, presence: true
  ## role enum
  enum role: { director: 0, actor: 1 }
end
