module NewcomerSendsTasksHelper
    def valid?
        if @newcomer_sends_task.is_valid
            return 'Sim'
        else
            return 'Não'
        end
    end
end
