class ReportsController< ActionController::Base
  def create
    report = Report.new(body: params[:body], image: params[:image])
    puts "&" * 50
    p report
    puts "%" * 50
    if report.save
      UserReport.create(user_id: User.find_by(uid: session[:user_id]), report_id: report.id)
      RecipeReport.create(report_id: report.id, recipe_id: params[:recipe_id])
      redirect_to :back
    end
  end
end
