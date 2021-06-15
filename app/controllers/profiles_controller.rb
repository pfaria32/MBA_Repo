class ProfilesController < ApplicationController



def profiles_params
    params.require(:profile).permit(:picture)
end

end
