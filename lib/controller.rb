require 'gossip'
require 'gossip_comment'

class ApplicationController < Sinatra::Base
	get '/' do
		erb :index, locals: {gossips: Gossip.all}
	end

	get '/gossips/new' do
		erb :new_gossip
	end

	post '/gossips/new/' do
  	Gossip.new(params["gossip_author"],params["gossip_content"]).save
		redirect '/'
	end

	get '/gossips/:id/' do
		erb :show, locals: {id: params["id"], gossip_to_show: Gossip.find(params["id"]), gossip_comments: GossipComment.all(params["id"])}
	end

	get '/gossips/:id/edit/' do
		erb :edit, locals: {id: params["id"], gossip_to_edit: Gossip.find(params["id"])}
	end

	post '/gossips/:id/edit/' do
		Gossip.update(params["id"], params["gossip_author"], params["gossip_content"])
		redirect "/"
	end

	post '/gossips/:id/' do
		GossipComment.new(params["id"],params["gossip_comment_content"]).save
		redirect "/gossips/#{params['id']}/"
	end

end