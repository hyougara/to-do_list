class ListsController < ApplicationController
  def index
    @lists =List.all.order(created_at: :desc)
  end

  def new
   
  end

  def edit
    @list=List.find_by(id: params[:id])   
  end

  def create
    List.create(title:params["lists"]["title"],content:params["content"])
    # if @list.save
    # flash[:notice]="投稿完了！"
    redirect_to "/"
  # else render ("list/new")
  # end

  end

  def destroy
    @list =List.find_by(id:params[:id])
    @list.destroy
    @list.save
    redirect_to "/"
  end

  def update
    @list=List.find_by(id:params[:id])
    @list.title=params[:lists][:title]
    @list.content=params[:content]
    if @list.save
      flash[:notice]="編集完了！"
      redirect_to "/"
    else render ("lists/edit")
      
    end
    
  end

end
