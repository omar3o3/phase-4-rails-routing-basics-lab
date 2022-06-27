class StudentsController < ApplicationController

  def index
    render :json => Student.all
  end

  def grades
    render :json => Student.order(grade: :desc)
  end

  def highest_grade
    render :json => Student.all.max_by{|x| x.grade}
  end

end
