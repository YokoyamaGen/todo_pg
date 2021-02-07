class Task
  attr_reader :id, :title, :content

  @@count = 0

  def initialize(**params)
    @title = params[:title]
    @content = params[:content]
  end

  def add_count
    @@count += 1
    @id = @@count
  end
end
