class DocumentsController < ApplicationController

  before_action :find_document, only: [:show, :edit, :update]

  def index
    @documents = Document.all.order("created_at DESC")
  end

  def show

  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to documents_path
    else
      render 'new'
    end

  end


  def edit
  end

  def update
    @document.update(document_params)
    redirect_to root_path
  end



  private

    def find_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:title, :body)
    end


end
