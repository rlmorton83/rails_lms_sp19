class EnrollmentsController < ApplicationController
  before_action :set_course

  def index
    # @enrollments = @course.enrollments
    @teacher = @course.enrollments.where(role: 'teacher')
    @ta = @course.enrollments.where(role: 'ta')
    @student= @course.enrollments.where(role: 'student')
  end

  def new
    @users = User.all - @course.users
    @enrollment = @course.enrollments.new
  end

  def create
    @enrollment = @course.enrollments.new(enrollment_params)
   
    if @enrollment.save
      redirect_to course_enrollments_path(@course)
    else
      render :new
    end
  end

  def destroy
    @enrollment = @course.enrollments.find(params[:id])
    @enrollment.destroy
    redirect_to course_enrollments_path(@course)
  end

  private 

    def enrollment_params
      params.require(:enrollment).permit(:role, :user_id)
    end 

    def set_course
      @course = Course.find(params[:course_id])
    end
end