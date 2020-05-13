class CoursesController < ApplicationController

    def index
        @courses = Course.all
    end

    def show
        @course = Course.find(params:id)
    end

    def new
        @course = Course.new
    end

    def create
        @course = current_user.courses.build(course_params)
        if @course.save
            redirect_to course_path(@course) #any time it's gonna form a URL that need dynamic raut and ID I need instance variable
        else
            render :new
        end    
    end

    private

    def course_params
        params.require(:course).permit(:description, :location)
    end
end
