module MessageDialog
  def add_task_msg(task)
    puts "【追加】 [No.#{task.id}] #{task.title}:#{task.content}"
  end

  def no_display_task_msg
    puts "【！】 タスクはありません。"
  end

  def display_header_msg
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
  end

  def display_task_msg(task)
    puts "[No.#{task.id}] #{task.title}:#{task.content}"
  end

  def display_footer_msg
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  def no_delete_task_msg
    puts "【！】 該当idのタスクはありません。"
  end

  def delete_task_msg
    puts "【削除】 [No.#{@delete_task.id}] #{@delete_task.title}:#{@delete_task.content}"
  end
end
