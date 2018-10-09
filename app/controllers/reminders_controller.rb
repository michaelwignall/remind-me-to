class RemindersController < ApplicationController
  before_action :set_reminder, only: [:show, :edit, :update, :destroy]

  # GET /reminders
  def index
    @reminders = Reminder.all
  end

  # GET /reminders/1
  def show
  end

  # GET /reminders/new
  def new
    @reminder = Reminder.new
  end

  # GET /reminders/1/edit
  def edit
  end

  # POST /reminders
  def create
    @reminder = Reminder.new(reminder_params)

    if @reminder.save
      redirect_to @reminder, notice: 'Reminder was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /reminders/1
  def update
    if @reminder.update(reminder_params)
      redirect_to @reminder, notice: 'Reminder was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /reminders/1
  def destroy
    @reminder.destroy
    redirect_to reminders_url, notice: 'Reminder was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reminder
      @reminder = Reminder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reminder_params
      params.require(:reminder).permit(:what, :at)
    end
end
