class ImdbTop250sController < ApplicationController
  helper ImdbTop250sHelper

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

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_imdb_top250
    @imdb_top250 = ImdbTop250.find(params[:id])
  end

end
