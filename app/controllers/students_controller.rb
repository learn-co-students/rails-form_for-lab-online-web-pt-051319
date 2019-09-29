class StudentsController < ApplicationController

		before_action :set_student, only: [:show, :edit, :update, :destroy]
		
		def index
			@students = Student.all
		end
	
		def new
			@student = Student.new
		end
	
		def create
			@student = Student.create(student_params)
			redirect_to student_path(@student)
		end
	
		def edit
			
		end
	
		def update
			@student.update(student_params)
			redirect_to student_path(@student)
		end
	
		def show
			
		end
	
		def destroy
			@student.destroy
			redirect_to students_path
		end
	
		private
	
		def student_params
			params.require(:student).permit(:first_name, :last_name)
		end
	
		def set_student
			@student = Student.find_by_id(params[:id])
		end
	
end
