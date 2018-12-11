class List < ApplicationRecord
  has_many :list_items, dependent: :destroy

  validates :title, presence: true

  def self.select_options
    descendants.map{ |c| c.to_s }.sort
  end
end
