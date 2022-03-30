class ApplicationController < Sinatra::Base
  # Add this line to set the Content-Type header for all responses

  #defining a route that responds to a `GET`

  # request to `/bakeries` and returns an array of
  # JSON objects for all bakeries in
  # the database.

  get '/bakeries' do
    #get all the bakeries from the database
    bakeries = Bakery.all

    # return a JSON response with an array of all the bakery data
    bakeries.to_json
  end
end
