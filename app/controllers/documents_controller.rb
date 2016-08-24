class DocumentsController < ApplicationController

  before_action :find_document, only: [:show, :edit, :update, :destroy]


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
      flash[:notice] = "Post successfully created"
      redirect_to @document
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

  def destroy
    @document.destroy
    redirect_to root_path, flash: {notice: 'Document was successfully deleted!'}
  end


  private

    def find_document
      @document = Document.find(params[:id])
    end

    def document_params
      params.require(:document).permit(:title, :body)
    end




end
