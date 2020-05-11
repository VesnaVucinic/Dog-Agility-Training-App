class CoursesController < ApplicationController

    def index
    end

    def show
    end
    def new
        @course = Course.new
    end

    def create
     
    end

    private

    def course_params
        params.require(:course).permit(:description, :location)
    end
end
