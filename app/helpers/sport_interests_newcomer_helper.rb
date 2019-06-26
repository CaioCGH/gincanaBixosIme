module SportInterestsNewcomerHelper
    def getNewcomerFromSession
        @newcomer = Newcomer.find_by(user_id: current_user.id)
    end

    def getBixeSports
        @newcomer = getNewcomerFromSession
        
        puts @newcomer.id
        relation_list = SportInterestsNewcomer.where(newcomer_id: @newcomer.id)
        sports_ids = []
        for r in relation_list do
            sports_ids.append(r.sport_id)
        end
        puts sports_ids
        @sports = Sport.find(sports_ids)
    end

    def interested(sport)
        SportInterestsNewcomer.where("sport_id = #{sport.id}").count
    end
end
