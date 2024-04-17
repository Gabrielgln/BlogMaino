class TagsController < ApplicationController
  #before_action :set_tag, only: %i[ show edit update destroy ]

  # GET /tags or /tags.json
  def index
    @tags = Tag.all
  end

  def show
    @tag = set_tag
  end

  def edit
  end

  def update
    respond_to do |format|
      if @tag.update(tag_params)
        format.html { redirect_to @tag, notice: "Tag was successfully updated." }
        format.json { render :show, status: :ok, location: @tag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tag.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tag_params
      params.require(:tag).permit(:name)
    end
end
