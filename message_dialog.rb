module MessageDialog
  def diplay_action_msg(**params)
    action_info = params[:action_info]
    task = params[:task_info]
    puts "#{action_info}[No.#{task.id}] #{task.title}:#{task.content}"
  end

  def display_no_task_msg
    puts "【！】 タスクはありません。"
  end

  def delete_no_task_msg
    puts "【！】 該当idのタスクはありません。"
  end
end
