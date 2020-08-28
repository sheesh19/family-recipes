class CookbooksController < ApplicationController
    before_action :set_cookbook, only: [:show, :edit, :update, :destroy]

    def index
        @cookbooks = current_user.cookbooks
    end

    def show
        @recipes = @cookbook.recipes
    end
    
    def new
        @cookbook = Cookbook.new
    end

    def create
        @cookbook = Cookbook.new(cookbook_params)
        @cookbook.save

        redirect_to cookbook_path(@cookbook)
    end

    def edit; end

    def update
        @cookbook = Cookbook.find(params[:id])
        @cookbook.update(params[:cookbook])

        redirect_to cookbook_path(@cookbook)
    end

    def destroy
        @cookbook.destroy

        redirect_to cookbooks_path
    end

    
    private
    
    def set_cookbook
        @cookbook = Cookbook.find(params[:id])
    end

    def cookbook_params
        params.require(:cookbook).permit(:name)
    end
end
