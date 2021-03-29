require_relative './lib/app.rb'

todo = App.new
todo.display_tasks
todo.display_select_task
index = todo.select_task
todo.display_new_task
new_task = todo.task_add
todo.change_task(new_task, index)
