module TasksHelper
    def getTask(newcomer_sends_tasks)
        Task.find(newcomer_sends_tasks.task_id)
    end

    def getBixeFromTask(newcomer_sends_tasks)
        Newcomer.find(newcomer_sends_tasks.newcomer_id)
    end

    def getPictures
        @valid_pictures = []
        @invalid_pictures = []
        @newcomer_sends_tasks = NewcomerSendsTask.all
        for picture in @newcomer_sends_tasks
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
    def getMyPictures
        @valid_pictures = []
        @invalid_pictures = []
        newcomer_sends_tasks = NewcomerSendsTask.all
        newcomer = getNewcomerFromSession
        for picture in newcomer_sends_tasks
            if picture.task_id == @task.id && picture.newcomer_id == newcomer.id
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
