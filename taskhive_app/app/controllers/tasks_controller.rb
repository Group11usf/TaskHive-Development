class TasksController < ApplicationController
    def new
      @task = Task.new
      @date = params[:date] || Date.today.to_s
    end
  
    def create
      @task = current_user.tasks.new(task_params)
      if @task.save
        if @task.task_status == "Completed"
          @task.update(date_finished: Time.current)
        end
        redirect_to task_date_path(date: @task.due_date), notice: "Task created!"
      else
        render :new
      end
    end
  
    def show
      @date = params[:date]
      @tasks = Task.where(due_date: @date, user_id: current_user)
      @task = Task.new
      #render 'tasks/date'
    end

    def edit
      @task = Task.find(params[:id])
      @date = @task.due_date
    end

    def update
      @task = Task.find(params[:id])
      @date = @task.due_date
      if @task.update(task_params)
        if @task.task_status == "Completed"
          @task.update(date_finished: Time.current)
        end
        redirect_to task_date_path(date: @task.due_date), notice: "Task updated!"
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def clear_all
        Task.destroy_all
        redirect_to calendar_path, notice: "All tasks have been cleared."
    end
      
    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to task_date_path(date: @task.due_date), notice: "Task deleted successfully."
    end
      
    def task_params
      params.require(:task).permit(:title, :link, :due_date, :task_status)
    end
end