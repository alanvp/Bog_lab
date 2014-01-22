BogApp::Application.routes.draw do
    # create our root route
    # get "/", :to  => "bog#index"
    
    root to: "bogs#index"

    get "/bogs", to: "bogs#index"
    
    #define a route for making a new plane
    get "/bogs/new", to: "bogs#new"

    get "/bogs/:id", to: "bogs#show"

    get "/bogs/:id/edit", to: "bogs#edit"

    post "/bogs", to: "bogs#create"

    put "/bogs/:id", to: "bogs#update"

end
