class Tag
  attr_reader :tag_name
  attr_accessor :id

  def initialize(tag_name, id = nil)
    @tag_name = tag_name
    @id = id
    validate_tag!
  end

  private

  def validate_tag!
    raise InvalidTag, 'tag name is missing' if name_is_empty?
  end

  def name_is_empty?
    (@tag_name.nil? || @tag_name == '')
  end
end
