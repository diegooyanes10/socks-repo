class MatchesController < ApplicationController
  # This call runs before every action and loads the sock based on the sock_id parameter from the URL.
  before_action :load_sock
  
    # before_action :load_sock

    # GET /socks or /{:sock_id
  def new
    @match = Match.new
    @socks = Sock.all
  end

    #POST /socks/{sock_id}/matches
    # This action creates a new match between two socks.
  def create
    @match = Match.new(sock_1_id: params[:sock_id], sock_2_id: params[:match_id])
    #Save the match to the database
    @match.save
    redirect_to @sock, notice: "Match was successfully created."
  end

private
 # This method finds and loads the sock using parameters from the request.
  def load_sock
    @sock = Sock.find(params[:sock_id])
  end  
end