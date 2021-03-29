class App
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(task_input)
    @tasks << { task: task_input, completed: false }
  end

  def change_task(edited_task, index)
    @tasks[index][:task] = edited_task
  end

  def display_add_task
    puts 'Enter name of task'
  end

  def display_tasks
    puts 'Tasks:'
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task[:task]} [#{task[:completed] ? 'X' : ' '}]"
    end
  end

  def display_new_task
    puts 'Please enter new task'
  end

  def display_select_task
    puts 'Please enter the number of the task:'
  end

  def select_task
    gets.to_i - 1
  end

  def task_add
    gets.strip
  end
end
