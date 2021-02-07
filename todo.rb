require_relative "message_dialog.rb"

class ToDo
  include MessageDialog

  def initialize
    @tasks = []
  end

  def add(task)
    task.add_count
    @tasks.push(task)
    add_task_msg(task)
  end

  def info
    if @tasks.empty?
      no_display_task_msg
    else
      display_header_msg

      display_task_info

      display_footer_msg
    end
  end

  def delete(**params)
    @id = params[:id]

    #削除対象のタスクを格納する変数の初期化
    @delete_task = nil

    ckeck_taget_task_being

    exec_delete_task
  end

  private

  def display_task_info
    @tasks.each do |task|
      display_task_msg(task)
    end
  end

  def ckeck_taget_task_being
    @tasks.each do |task|
      @delete_task = task if task.id == @id
    end
  end

  def exec_delete_task
    if @delete_task.nil?
      no_delete_task_msg
    else
      @tasks.delete(@delete_task)
      delete_task_msg
    end
  end
end
