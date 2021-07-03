class NotesController < ApplicationController
  before_action :set_note, only: [:edit, :update]

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.lecture_id = params[:lecture_id]

    if @note.save
      redirect_to course_path(params[:course_id]), notice: 'Note was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /notes/1
  def update
    if @note.update(note_params)
      redirect_to @note, notice: 'Note was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /notes/1
  def destroy
    @note = Note.find(params[:note_id])
    if @note.upload.attached?
      @note.upload.purge
    end
    @note.destroy
    redirect_to course_path(params[:course_id]), notice: 'Note was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:title, :content, :upload)
    end
end
