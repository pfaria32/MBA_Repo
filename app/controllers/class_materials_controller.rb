class ClassMaterialsController < ApplicationController


def note_params
  params.require(:class_material).permit(uploads: [])
end


end
