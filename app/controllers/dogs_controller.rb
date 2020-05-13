class DogsController < ApplicationController
    def index
        @dogs = Dog.all
    end

    def new
        @dog = Dog.new  
    end

    def create
        @dog = current_user.dogs.build(dog_params)
        if @dog.save
          redirect_to dog_path(@dog)
        else
          render :new
        end
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :age, :breed, :category, :user_id)
    end



end
