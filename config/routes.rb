Rails.application.routes.draw do
	resources :emergencies, only: [:create, :index, :patch]

	match '*unmatched_route', :to => 'application#render_not_found', :via => :all
end
