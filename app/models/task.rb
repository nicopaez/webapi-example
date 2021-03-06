class Task
  attr_reader :user, :title, :tags
  attr_accessor :id

  def initialize(user, title, id = nil)
    @user = user
    @title = title
    @id = id
    @tags = []
    validate_task!
  end

  def add_tag(tag)
    @tags << tag
  end

  private

  def validate_task!
    raise InvalidTask, 'title is missing' if title_is_empty?
    raise InvalidTask, 'user is missing' if user_is_empty?
  end

  def title_is_empty?
    (@title.nil? || @title == '')
  end

  def user_is_empty?
    @user.nil?
  end
end
