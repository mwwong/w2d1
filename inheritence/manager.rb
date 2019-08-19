require_relative "employee.rb"
class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss = nil)
      super
      @employees = []
    end

    def bonus(multiplier)
      total = 0
      queue = self.employees.map { |emp| emp }
      until queue.empty?
        employee = queue.shift
        total += employee.salary
        if !employee.employees.nil?
          employee.employees.each do |emp_2|
            queue << emp_2
          end 
        end 
      end 
      total * multiplier
    end

    def add_employee(name)
      self.employees << name
    end
end

ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Ned", "Manager", 78000, "ned")
shawna = Employee.new("Shawna", "TA", 12000, "darren")
david = Employee.new("David", "TA", 10000, "darren")
# ned.add_employee(shawna)
# ned.add_employee(david)
darren.add_employee(shawna)
darren.add_employee(david)
ned.add_employee(darren)

puts ned.bonus(5)
puts darren.bonus(4)
puts david.bonus(3)


