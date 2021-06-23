class LecturesController < ApplicationController

  before_action :set_lecture, only: [:show, :edit, :update, :destroy]

  # GET /lecture
  def index
    @lectures = Lecture.all
  end

  # GET /lecture/1
  def show
  end

  # GET /lecture/new
  def new
    @lecture = Lecture.new
  end

  # GET /lectures/1/edit
  def edit
  end

  # POST /lectures
  def create
    @lecture = Lecture.new(lecture_params)
    @lecture.user_id = current_user.id
    @lecture.course_id = params[:course_id]

    if @lecture.save
      redirect_to course_path(params[:course_id]), notice: 'Lecture was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /lectures/1
  def update
    if @lecture.update(lecture_params)
      redirect_to @lecture, notice: 'Lecture was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /lectures/1
  def destroy
    @lecture.destroy
    redirect_to lectures_url, notice: 'Lecture was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lecture
      @lecture = Lecture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lecture_params
      params.require(:lecture).permit(:lecture_date, :name)
    end
end
