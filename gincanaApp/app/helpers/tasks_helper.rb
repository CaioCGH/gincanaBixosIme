module TasksHelper
    def getTask(bixe_sends_tasks)
        Task.find(bixe_sends_tasks.task_id)
    end

    def getBixe(bixe_sends_tasks)
        Bixe.find(bixe_sends_tasks.bixe_id)
    end

    def getPictures
        @valid_pictures = []
        @invalid_pictures = []
        @bixe_sends_tasks = BixeSendsTask.all
        for picture in @bixe_sends_tasks
            if picture.task_id == @task.id
                if picture.is_valid
                    @valid_pictures.append(picture)
                else
                    @invalid_pictures.append(picture)
                end
            end
        end
        return @valid_pictures, @invalid_pictures
    end
end
