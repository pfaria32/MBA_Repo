class NotesController < ApplicationController


def note_params
  params.require(:note).permit(uploads: [])
end

end
