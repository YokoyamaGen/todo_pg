require_relative "message_dialog.rb"

class ToDo
  include MessageDialog

  def initialize
    @tasks = []
  end

  def add(task)
    #タスクにIDを自動採番
    task.add_count
    @tasks.push(task)
    diplay_action_msg(action_info: ADD_TASK_MSG, task_info: task)
  end

  def info
    if @tasks.empty?
      display_no_task_msg
    else
      puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"

      display_task_info

      puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
    end
  end

  def delete(**params)
    id = params[:id]

    delete_task = check_taget_task_exists(id)

    exec_delete_task(delete_task)
  end

  private

  def display_task_info
    @tasks.each do |task|
      diplay_action_msg(action_info: DISPLAY_TASK_MSG, task_info: task)
    end
  end

  def check_taget_task_exists(id)
    @tasks.find { |task| task.id == id }
  end

  def exec_delete_task(delete_task)
    if delete_task.nil?
      delete_no_task_msg
    else
      @tasks.delete(delete_task)
      diplay_action_msg(action_info: DELETE_TASK_MSG, task_info: delete_task)
    end
  end
end
