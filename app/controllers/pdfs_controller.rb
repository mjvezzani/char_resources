class PdfsController < ApplicationController

  def index
    @pdfs = Pdf.all
  end

  def show
    @pdf = Pdf.find(params[:id])
  end
  
  def new
    @pdf = Pdf.new
  end

  def create
    @pdf = Pdf.new(pdf_params)

    if @pdf.save
      flash[:success] = 'Article successfully uploaded'
      redirect_to pdfs_path
    else
      render :new
    end
  end

  def destroy
    @pdf = Pdf.find(params[:id])
    @pdf.destroy
    flash[:success] = 'Article removed from database'
    redirect_to pdfs_path
  end

  private

  def pdf_params
    params.require(:pdf).permit(:title, :author, :attachment)
  end
end
