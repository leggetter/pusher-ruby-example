require 'sinatra'
require 'pusher'
require 'config'

set :public_folder, File.dirname(__FILE__) + '/public'

get '/pusher/auth' do
  'Hello world!'
end

post '/trigger_event' do
  if params[:socket_id]
    Pusher['my-channel'].trigger('message_received', {:message => 'You said "' + params[:message] + '"'}, params[:socket_id])
  else
    Pusher['my-channel'].trigger('message_received', {:message => 'You said "' + params[:message] + '"'})
  end
end