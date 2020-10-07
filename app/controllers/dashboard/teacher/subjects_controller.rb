class Dashboard::Teacher::SubjectsController < ApplicationController
    before_action :authenticate_teacher!

    def index
        @users
    end


    def show
    
    end

    def new

    end
    

    def edit

    end

end
