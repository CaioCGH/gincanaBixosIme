module RelBixeSportsHelper
    def getBixe
        @rel_user_bixe = RelUserBixe.find_by_user_id(current_user.id)
        @bixe = Bixe.find(@rel_user_bixe.bixe_id)
    end
    
    def getBixeSports
        @bixe = getBixe
        
        puts @bixe.id
        relation_list = RelBixeSport.where(bixe_id: @bixe.id)
        sports_ids = []
        for r in relation_list do
            sports_ids.append(r.sport_id)
        end
        puts sports_ids
        @sports = Sport.find(sports_ids)
    end

    def interested(sport)
        RelBixeSport.where("sport_id = #{sport.id}").count
    end
end
