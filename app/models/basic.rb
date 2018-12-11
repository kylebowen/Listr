class Basic < List
  # enables use of existing route and form helpers
  def self.model_name
    List.model_name
  end
end
