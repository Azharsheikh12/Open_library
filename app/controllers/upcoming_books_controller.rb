class UpcomingBooksController < InheritedResources::Base
    before_action :set_post, only: %i[ show edit update destroy ]



    def index
      @upcoming_books = UpcomingBook.all
    end

    def show
      @upcoming_book = UpcomingBook.find(params[:id])
      render :show
      # render json: @upcoming_book
    end

    def new
      @upcoming_book = UpcomingBook.new
    end

    def edit
    end


    def create
      @upcoming_book = UpcomingBook.new(upcoming_book_params)
      # @upcoming_book.user = current_user

        respond_to do |format|
          if @upcoming_book.save
            format.html { redirect_to upcoming_book_url(@upcoming_book), notice: "Book successfully created." }
            # format.json { render :show, status: :created, location: @upcoming_book }
          else
            format.html { render :new, status: :unprocessable_entity }
            # format.json { render json: @upcoming_book.errors, status: :unprocessable_entity }
          end
        end
    end

    def update
      respond_to do |format|
        if @upcoming_book.update(upcoming_book_params)
          format.html { redirect_to upcoming_book_url(@upcoming_book), notice: "Book successfully updated." }
          # format.json { render :show, status: :ok, location: @upcoming_book }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @upcoming_book.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @upcoming_book.destroy
        respond_to do |format|
          format.html { redirect_to upcoming_books_url, notice: "Book successfully deleted." }
          format.json { head :no_content }
        end
    end

  private

    def set_post
      @upcoming_book = UpcomingBook.find(params[:id])
    end

    def upcoming_book_params
      params.require(:upcoming_book).permit(:title, :description, :author, :b_subject, :attachment, :image)
    end

end
