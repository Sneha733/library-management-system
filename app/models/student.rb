class Student < ApplicationRecord
end
def index
  @students = Student.all
end

