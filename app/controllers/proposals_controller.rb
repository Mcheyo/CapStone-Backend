class ProposalsController < ApplicationController

    def index 
        proposals = Proposal.all 
        render json: proposals.to_json
    end 

    def show 
        proposal = Proposal.find_by(id: params[:id])
        render json: proposal.to_json(include:{client:{only:[:id, :name]}})

    end 

    def create 
        byebug
        proposal = Proposal.create(idea: params["idea"], client_id:params["client"])
         if proposal.valid?
        render json: proposal
         else 
            byebug
            render json: proposal.errors
         end 
        
    end 
end
