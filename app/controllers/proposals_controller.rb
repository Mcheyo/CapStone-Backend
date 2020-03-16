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
        
        proposal = Proposal.create(idea: params["idea"], client_id:params["client"], status:"Pending")
       suggested_users =  User.all.select{|user| user.skill_ids & params["skills"] == params["skills"]} 
       byebug 
         if proposal.valid?
        render json: { 
            proposal: proposal, 
            developers: suggested_users
        } 
         else 
                        
            render json: {
                        message: proposal.errors
                        }
         end 
        
    end 
end
