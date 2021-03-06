class LanguagesController < ApplicationController
    def index
        @languages = Language.all
    end

    def show
        @language = Language.find(params[:id])
    end

    def new
        @language = Language.new
    end

    def create
        @language = Language.new(language_params)

        if @language.save
            redirect_to @language
        else
            render :new
        end
    end

    def edit
        @language = Language.find(params[:id])
    end

    def update
        @language = Language.find(params[:id])

        if @language.update(language_params)
            redirect_to @language
        else
            render :edit
        end
    end

    private
    def language_params
        params.require(:language).permit(:key, :name)
    end
end
