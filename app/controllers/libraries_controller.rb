class LibrariesController < OpenReadController
  before_action :set_library, only: [:show, :update, :destroy]

  # GET /libraries
  # GET /libraries.json
  def index
    @libraries = current_user.libraries
    # @libraries = Library.all

    render json: @libraries
  end

  # GET /libraries/1
  # GET /libraries/1.json
  def show
    render json: @library
  end

  # POST /libraries
  # POST /libraries.json
  def create
    @library = current_user.libraries.build(library_params)

    if @library.save
      render json: @library, status: :created
    else
      render json: @library.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /libraries/1
  # PATCH/PUT /libraries/1.json
  def update
    @library = current_user.libraries.find(params[:id])

    if @library.update(library_params)
      head :no_content
    else
      render json: @library.errors, status: :unprocessable_entity
    end
  end

  # DELETE /libraries/1
  # DELETE /libraries/1.json
  def destroy
    # @library = current_user.libraries
    @library.destroy

    head :no_content
  end

  private

  def set_library
    @library = current_user.libraries.find(params[:id])
  end

  def library_params
    params.require(:library).permit(:name)
  end
end
