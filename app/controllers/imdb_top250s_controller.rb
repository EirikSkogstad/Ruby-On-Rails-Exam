class ImdbTop250sController < ApplicationController

  # GET /imdb_top250s
  # GET /imdb_top250s.json
  def index
    @imdbTop250 = ImdbTop250.all
  end

  # GET /imdb_top250s/1
  # GET /imdb_top250s/1.json
  def show
    id = params[:id]
    imdb = ImdbTop250.find(id)

    respond_to do |format|
      format.json { render json: imdb }
    end
  end

  # POST /imdb_top250s
  # POST /imdb_top250s.json
  def create
    @imdbTop250 = ImdbTop250.new(user_params)

    respond_to do |format|
      if @imdbTop250.save
        format.html {redirect_to @imdbTop250, notice: 'imdbTop250 was successfully created.'}
        format.json {render :show, status: :created, location: @imdbTop250}
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_imdbTop250
    @imdbTop250 = ImdbTop250.find(params[:id])
  end

  def imdbTop250_params
    params.permit(:imdbID, :title)
  end
end
