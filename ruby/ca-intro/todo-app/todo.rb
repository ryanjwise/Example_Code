require_relative 'lib/app'

todo = App.new
todo.add_task('task 1')
todo.add_task('task 2')
todo.display_tasks
todo.display_select_task
index = todo.select_task
todo.display_new_task
new_task = todo.task_add
todo.change_task(new_task,index)
todo.display_tasks

