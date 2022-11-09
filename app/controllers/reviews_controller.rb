class ReviewsController < ApplicationController
  def new
    @dessin = Dessin.find(params[:dessin_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @dessin = Dessin.find(params[:dessin_id])
    @review.dessin = @dessin
    if @review.save
      redirect_to dessin_path(@dessin)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to dessin_path(@review.dessin), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
