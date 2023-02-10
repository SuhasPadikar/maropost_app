class LearnerController < ApplicationController
  def new_learner
    if request.post?
    @intern = Intern.new(learner_params)
    if @intern.save
      flash[:notice]="learner added"
      redirect_to :action=>:show_learner
    else
      render:action=>:new_learner
  end
 end
end

  def show_learner
  end
private 
def learner_params
  params.permit(:name,:age,:marks1,:marks2,:marks3,:marks,:grade)
end


end
