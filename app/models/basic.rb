class Basic < List
  validates :title, presence: true
  # enables use of existing route and form helpers
  def self.model_name
    List.model_name
  end
end
