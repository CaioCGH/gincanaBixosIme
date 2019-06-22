module BixeSendsTasksHelper
    def valid?
        if @bixe_sends_task.is_valid
            return 'Sim'
        else
            return 'Não'
        end
    end
end
