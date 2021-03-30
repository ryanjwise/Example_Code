# frozen_string_literal: true

require_relative '../lib/app'

# Clearing ARGV to make rspec -f d to work
ARGV.clear

RSpec.describe App do
  subject(:app) do
    described_class.new
  end

  describe 'Class testing' do
    it 'should be an instance of App' do
      expect(app).to be_a App
    end

    it 'should have an empty task list' do
      expect(app.tasks).to eq []
    end
  end

  describe '#add_task' do
    it 'should be able to add a task' do
      app.add_task('Create a todo app')
      expect(app.tasks.last).to eq({ task: 'Create a todo app', completed: false })
    end
  end

  describe '#change_task' do
    before(:each) do
      app.tasks = [{ task: 'test task', completed: false }]
    end

    it 'should change a task depending on the index' do
      app.change_task('This is now edited', 0)
      expect(app.tasks[0][:task]).to eq 'This is now edited'
    end

    it 'should change a task if the index is 1' do
      app.tasks << { task: 'This is task at index 1', completed: false }
      app.change_task('This is the new task at index 1', 1)
      expect(app.tasks[1][:task]).to eq 'This is the new task at index 1'
    end
  end

  describe '#delete_task' do
    before(:each) do
      app.tasks = [{ task: 'test task', completed: false }]
    end

    it 'should remove a task at index 0' do
      app.delete_task(0)
      expect(app.tasks).to be_empty
    end

    it 'should delete the correct task' do
      deleted_task = { task: 'task to be deleted', completed: false }
      app.tasks << deleted_task
      app.tasks << { task: 'last task', completed: false }
      app.delete_task(1)
      expect(app.tasks).not_to include(deleted_task)
    end
  end

  describe '#toggle_complete' do
    it 'should toggle a false task to true' do
      app.tasks << { task: 'toggle task', completed: false }
      app.toggle_complete(0)
      expect(app.tasks[0][:completed]).to be true
    end

    it 'should toggle a true task to false' do
      app.tasks << { task: 'toggle task', completed: true }
      app.toggle_complete(0)
      expect(app.tasks[0][:completed]).to be false
    end
  end

  describe 'display methods' do
    context '#display_add_task' do
      it 'should ask user for input' do
        expected_output = "Enter name of task\n"
        expect { app.display_add_task }.to output(expected_output).to_stdout
      end
    end

    context '#display_select_task' do
      it 'should display a message to user to enter a task number' do
        expected_output = "Please enter the number of the task:\n"
        expect { app.display_select_task }.to output(expected_output).to_stdout
      end
    end

    context '#display_new_task' do
      it 'should ask user for a new task' do
        expected_output = "Please enter new task\n"
        expect { app.display_new_task }.to output(expected_output).to_stdout
      end
    end

    context '#display_tasks' do
      before(:each) do
        app.tasks = [{ task: 'test task', completed: false }]
      end

      it 'should display all our tasks' do
        expected_output = "Tasks:\n1. test task [ ]\n"
        expect { app.display_tasks }.to output(expected_output).to_stdout
      end

      it 'should display tasks that are completed with an X' do
        app.tasks << { task: 'test task 2', completed: true }
        expected_output = "Tasks:\n1. test task [ ]\n2. test task 2 [X]\n"
        expect { app.display_tasks }.to output(expected_output).to_stdout
      end

      it 'should display task that are not completed with an space' do
        app.tasks << { task: 'test task 2', completed: false }
        expected_output = "Tasks:\n1. test task [ ]\n2. test task 2 [ ]\n"
        expect { app.display_tasks }.to output(expected_output).to_stdout
      end
    end
  end

  describe 'input methods' do
    context '#task_add' do
      let(:input) { StringIO.new('test task') }
      it 'should be able to receive task name from terminal' do
        $stdin = input
        expect(app.task_add).to eq('test task')
      end
    end
    context '#select_task' do
      let(:input) { StringIO.new('1') }
      it 'should return the index of task selected' do
        $stdin = input
        expect(app.select_task).to eq(0)
      end
    end
  end
end
