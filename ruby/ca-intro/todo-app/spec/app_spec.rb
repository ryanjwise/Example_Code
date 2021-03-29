require_relative './../lib/app.rb'

# Unit testing small componants of code
RSpec.describe App do
  subject(:app){
    described_class.new
  }

  it 'should be an instance of app' do
    expect(app).to be_a App
  end

  it 'should have an empty task list' do
    expect(app.tasks).to eq []
  end

  context 'adding a task' do
    it 'should be able to add a task' do
      app.add_task('Create a todo app')
      expect(app.tasks.last).to eq({ task: 'Create a todo app', completed: false })
    end

    it 'should ask the user for input' do
      expected_output = "Enter name of task\n"
      expect{ app.display_add_task }.to output(expected_output).to_stdout # stdout == terminal
    end

    let(:input) { StringIO.new('test task') } # Simulate user input string
    it 'should be able to receive task name from terminal' do
      $stdin = input
      expect(app.task_add).to eq('test task')
    end
  end

  context 'displaying tasks' do
    # Runs a block of code before every test block within this contect scope. 
    # :each loops for each item within the context
    before(:each) do 
      app.tasks = [{ task: 'test task', completed: false }]
    end

    it 'should display all of our tasks' do
      expected_output = "Tasks:\n1. test task [ ]\n"
      expect{ app.display_tasks }.to output(expected_output).to_stdout
    end

    it 'should display tasks that are completed with an X' do
      app.tasks << {task: 'test task 2', completed: true}
      expected_output = "Tasks:\n1. test task [ ]\n2. test task 2 [X]\n"
      expect{ app.display_tasks }.to output(expected_output).to_stdout
    end

    it 'should display tasks that are not completed with a space' do
      app.tasks << {task: 'test task 2', completed: false}
      expected_output = "Tasks:\n1. test task [ ]\n2. test task 2 [ ]\n"
      expect{ app.display_tasks }.to output(expected_output).to_stdout
    end
  end

  context 'edit task' do

    before(:each) do 
      app.tasks = [{ task: 'test task', completed: false }]
    end

    it 'Should display a  message to the user to enter a task number' do
      expected_output = "Please enter the number of the task:\n"
      expect{ app.display_select_task }.to output(expected_output).to_stdout
    end

    it 'should ask the user for task input' do
      expected_output = "Please enter new task\n"
      expect{ app.display_new_task }.to output(expected_output).to_stdout
    end

    it 'should change a task depending on the index' do
      app.change_task('this is now edited', 0)
      expect(app.tasks[0][:task]).to eq 'this is now edited'
    end
    
    it 'should change a task if the index is 1' do
      app.tasks << {task: 'this is task at index 1', completed: false}
      app.change_task('this is a new task at index 1', 1)
      expect(app.tasks[1][:task]).to eq 'this is a new task at index 1'

    end
    describe '#select_task' do
      let(:input) { StringIO.new('1') } # Simulate user input string
      it 'should return the index of the task selected' do
        $stdin = input
        expect(app.select_task).to eq(0)
      end
    end
  end

end
