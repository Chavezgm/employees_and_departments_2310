require './lib/department'
require './lib/employee'
require './lib/budget'

RSpec.describe Budget do
  before(:each) do
    @budget_1 =Budget.new(2023)
    @department_1 = Department.new("Customer Service") 
    @department_2 = Department.new("Seasonal") 
    @department_3 = Department.new("HR") 
  end

  describe '#initialize' do
    it 'exists' do
      expect(@budget_1).to be_a(Budget)
    end
  end

  describe '#attributes' do
    it 'reads attributes' do
      expect(@budget_1.year).to eq(2023)
      expect(@budget_1.departments).to eq([])
    end
  end

  describe '#add_department' do
    it 'adds departments to the budget' do
      expect(@budget_1.departments).to eq([])
      @budget_1.add_department(@department_1)
      @budget_1.add_department(@department_2)
      expect(@budget_1.departments).to eq([@department_1,@department_2])
      
    end
  end

  describe '#departments_with_low_expenses' do
    it 'shows us the departments  expenses less then 500' do
      @budget_1.add_department(@department_1)
      @budget_1.add_department(@department_2)
      @department_1.expense(200)
      @department_2.expense(1000000)
      expect(@budget_1.departments_with_low_expenses).to eq([@department_1])
      expect(@budget_1.departments_with_low_expenses).to_not eq([@department_2])
    end
  end

  describe '#employee_salaries' do
    it 'list all employees salaries' do
      expect().to eq()
    end
  end
end
