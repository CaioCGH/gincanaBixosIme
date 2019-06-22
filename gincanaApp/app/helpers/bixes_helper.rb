module BixesHelper
    def getBixe
        @rel_user_bixe = RelUserBixe.find_by_user_id(current_user.id)
        @bixe = Bixe.find(@rel_user_bixe.bixe_id)
    end

    def getCourse(bixe)
        @course = Course.find(bixe.course_id)
    end
    def getTeam(bixe)
        @team = Team.find(bixe.team_id)
    end
end
