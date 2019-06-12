module BixesHelper
    def getBixe
        @rel_user_bixe = RelUserBixe.find_by_user_id(current_user.id)
        @bixe = Bixe.find(@rel_user_bixe.bixe_id)
    end
end
