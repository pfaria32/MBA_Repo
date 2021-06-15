class ReadingsController < ApplicationController


def note_params
  params.require(:reading).permit(uploads: [])
end


end
