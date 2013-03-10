class CommentsController < ApplicationController

  respond_to :html, :xml, :json 

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(params[:comment])

    if @comment.save
      respond_with do |format|
        format.html do
          if request.xhr?
            render :partial => "comments/show", :locals => { :comment => @comment }, :layout => false, :status => :created
          else
            redirect_to @comment
          end
        end
      end
    else
      respond_with do |format|
        format.html do
          if request.xhr?
            render :json => @comment.errors, :status => :unprocessable_entity
          else
            render :action => :new, :status => :unprocessable_entity
          end
        end
      end
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to @post }
      format.xml  { head :ok }
    end
  end
end

