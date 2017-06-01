class ImdbTop250sController < ApplicationController

  # GET /imdbTop250
  # GET /imdbTop250.json
  def index
    @imdbTop250 = ImdbTop250.all
  end

  # GET /imdbTop250/1
  # GET /imdbTop250/1.json
  def show
  end

  # POST /imdbTop250
  # POST /imdbTop250.json
  def create
    @imdbTop250 = ImdbTop250.new(user_params)

    respond_to do |format|
      if @imdbTop250.save
        format.html { redirect_to @imdbTop250, notice: '@imdbTop250 was successfully created.' }
        format.json { render :show, status: :created, location: @imdbTop250 }
      else
        format.html { render :new }
        format.json { render json: @imdbTop250.errors, status: :unprocessable_entity }
      end
    end
  end

  def user_params
    params.permit(:imdbID, :title)
  end
end
