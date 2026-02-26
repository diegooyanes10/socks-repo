class Proposals::AcceptsController < ApplicationController
  def create
    @proposal = AcceptsProposal.call(for_user: current_user, proposal_id: params[:proposal_id])

    redirect_back_or_to(authenticated_root_path)
  end
end