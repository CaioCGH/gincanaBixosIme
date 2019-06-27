module NewcomerHelper
    def getNewcomerFromSession
        @newcomer = Newcomer.find(user_id: current_user.id)
    end

    def getCourse(newcomer)
        @course = Course.find(newcomer.course_id)
    end
    def getTeam(newcomer)
        if newcomer.team_id != nil
            return @team = Team.find(newcomer.team_id)
        else
            return nil
        end
    end
    def desireTutor(newcomer)
        if newcomer.tutor
            return "sim"
        else
            return "não"
        end
    end
end
