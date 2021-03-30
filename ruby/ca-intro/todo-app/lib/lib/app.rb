# frozen_string_literal: true

require 'json'
class App
  attr_accessor :tasks

  def initialize
    @tasks = []
    load_data('./data/todo.json')
  end

  def run
    loop do
      system 'clear'
      display_welcome
      puts '-' * 20
      display_tasks
      puts '-' * 20
      display_menu
      puts '-' * 20
      process_menu(menu_input)
    end
  end

  def process_menu(menu_choice)
    case menu_choice
    when 1
      display_new_task
      add_task(task_add)
    when 2
      edit_task
    when 3
      delete_task_action
    when 4
      toggle_task_action
    when 5
      File.write('./data/todo.json', @tasks.to_json)
      exit
    end
  end

  def edit_task
    index = select_task_action
    display_new_task
    change_task(task_add, index)
  end

  def delete_task_action
    index = select_task_action
    delete_task(index)
  end

  def toggle_task_action
    index = select_task_action
    toggle_complete(index)
  end

  def select_task_action
    display_select_task
    index = select_task
    raise StandardError, 'Task is not within range' if index.negative? || index > @tasks.length

    index
  rescue StandardError
    puts "Task can't be found"
    retry
  end

  def add_task(task_input)
    @tasks << { task: task_input, completed: false }
  end

  def change_task(edited_task, index)
    @tasks[index][:task] = edited_task
  end

  def delete_task(index)
    @tasks.delete_at(index)
  end

  def toggle_complete(index)
    @tasks[index][:completed] = !@tasks[index][:completed]
  end

  def load_data(file_path)
    json_data = JSON.parse(File.read(file_path))
    @tasks = json_data.map do |task|
      task.transform_keys(&:to_sym)
    end
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

  def display_menu
    puts 'Menu:'
    puts '1. Add task'
    puts '2. Edit task'
    puts '3. Delete task'
    puts '4. Toggle completed'
    puts '5. Exit'
  end

  def display_welcome
    puts 'WELCOME TO MY APP!'
  end

  def menu_input
    gets.to_i
  end

  def select_task
    gets.to_i - 1
  end

  def task_add
    gets.strip
  end
end
