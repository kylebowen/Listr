module ListHelper
  def list_display_heading
    heading = @type.to_s == 'List' ? 'All' : @type.to_s
    heading += ' Lists'
  end

  def list_types
    List.select_options
  end
end