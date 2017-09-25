class AttendancesController < ApplicationController
  include SessionsHelper

  def create
    @attendance = Attendance.new(attend_params)
    @attendance.attendee_id = current_user.id
    @concert = @attendance.concert
    if @attendance.save
      respond_to do |format|
        format.html {redirect_to concert_path(@attendance.concert_id)}
        format.js
      end
    else
      @errors = ["Not attending"]
      render concert_path(@concert)
    end
  end

  private
    def attend_params
      params.permit(:concert_id)
    end
end