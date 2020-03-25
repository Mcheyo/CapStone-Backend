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
        
       proposal = Proposal.create(client_id: params["client_id"], developer_id:params["developer"], idea:params["idea"], status:"Pending", project_id:params["project"])
       if proposal.valid?
        render json: proposal
       else 
        render json: proposal.errors 
       end 
    end 
end
