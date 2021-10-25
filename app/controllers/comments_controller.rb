class CommentsController < ActiveRecord::Base


  has_many :news_comments
  has_many :news_post, :through => :news_comments

  # GET / or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @comments = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comments = Comment.new(comment_params)

    respond_to do |format|
      if @comments.save
        format.html { redirect_to @comments, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @comments }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commentsPost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comments.update(comment_params)
        format.html { redirect_to @comments, notice: "Event was successfully updated." }
        format.json { render :show, status: :ok, location: @comments }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commentsPost.errors, status: :unprocessable_entity }
      end
    end
  end

  def delete
    @comments = Comment.find(params[:id])
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comments.destroy
    respond_to do |format|
      format.html { redirect_to comments_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comments = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comments).permit(:name, :comment)
    end
end
