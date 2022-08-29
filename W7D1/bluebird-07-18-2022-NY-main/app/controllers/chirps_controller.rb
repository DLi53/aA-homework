class ChirpsController < ApplicationController

    def index
        # debugger
        @chirps = Chirp.all # fetch all the chirps
        render json: @chirps # render the chirps in the body of the response (as JSON)
    end

    def show
        # debugger
        @chirp = Chirp.find(params[:id])
        render json: @chirp
    end

    def create
        debugger
        @chirp = Chirp.new(chirp_params)
        # we don't want to immediately save the chirp to the database with 
        # create, because we want to be in control of what happens if it 
        # succeeds or fails.  We'll use some good old fashioned if else logic 
        # to decide what to do.

        # need to add the below line so we can create a chirp 
        # (we'll first get an error without it)
        @chirp.author = User.first # temporary fix until we have the notion of 
        # a current_user. @chirp.author_id = User.first.id is equivalent

        if @chirp.save
            # if it's successful, let's show the chirp (but to keep things DRY, 
            # use our show action)
            debugger
            redirect_to chirp_url(@chirp.id) # redirect initiates a 
            # whole new request! --> a `GET` request to the specified url
        else
            # When it comes to errors, we want to be very descriptive for our 
            # users, so we can use .errors.full_messages to grab the errors we 
            # received from the failed save. We will also add a status code to 
            # our response.
            debugger
            render json: @chirp.errors.full_messages, status: 422
        end

    end

    def update
        # update looks similar to create, but instead of instantiating a new 
        # chirp to save to the database, we'll lookup the chirp we want to 
        # update in the database using the wildcard from the Url, which we 
        # find in the params object

        @chirp = Chirp.find(params[:id])

        if @chirp.update(chirp_params)
            redirect_to chirp_url(@chirp.id)
        else
            render json: @chirp.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy 
        @chirp = Chirp.find(params[:id])
        @chirp.destroy
        redirect_to chirps_url
    end

    def chirp_params
        params.require(:chirp).permit(:body)
    end

end