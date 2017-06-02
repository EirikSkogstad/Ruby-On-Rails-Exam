class ImdbTop250sController < ApplicationController

  # GET /imdb_top250s
  # GET /imdb_top250s.json
  def index
    @imdb_top250 = ImdbTop250.all
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
    respond_to do |format|
      if @imdb_top250.save
        format.html {redirect_to @imdb_top250, notice: 'imdbTop250 was successfully created.'}
        format.json {render :show, status: :created, location: @imdb_top250}
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_imdb_top250
    @imdb_top250 = ImdbTop250.find(params[:id])
  end

  def imdb_top250_params
    params.permit(:imdbID, :title)
  end
end
