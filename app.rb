class FirstSinatraApp < Sinatra::Base
	get "/" do # this is the route, a ROOT route. our homepage!
	  "WDI is pretty good." # this is the view we're going to render, straight text
	  # erb "layout"
	  erb :"index"
	end

	get "/songs" do
	  @songs = ["Incarcerated Scarfaces - Raekwon", "We've Got the Jazz - Tribe", "Read to Die - Biggy"]
	  erb :"songs" # this is the path to our view file!
	end

	get "/animals" do
		@animals = ["Hawk", "Wolf", "Dolphin", "Elephant"]
		erb :"animals" 
	end

	get "/movies" do
		@movies = ["The Thing", "Two Lane Blacktop", "Videodrome"]
		erb :"movies" 
	end

  # GET "/animals/3" - Just get one specific animal (that already exists)
  get "/animals/:id" do
    # some code here
   @animals = ["Hawk", "Wolf", "Dolphin", "Elephant"]
			erb :"animals" 
   @animals = @animals[params[:id].to_i - 1]
  end


end