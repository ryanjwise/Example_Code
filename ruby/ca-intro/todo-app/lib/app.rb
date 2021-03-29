class App
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def add_task(input)
    @tasks << { task: input, completed: false }
  end

  def display_add_task
    puts "Enter name of task"
  end

  def task_add
    gets.strip
  end

  def display_tasks
    puts "Tasks:"
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task[:task]} [#{task[:completed] ? 'X' : ' '}]"
    end
  end

  def display_select_task
    puts 'Please enter the number of the task:'
  end

  def select_task
    gets.to_i - 1
  end

  def display_new_task
    puts "Please enter new task"
  end

  def change_task(task_name, index)
    @tasks[index][:task] = task_name
  end
end