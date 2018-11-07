class HomepageController < ActionController::Base

    def index
      @comments = Comment.all.order('created_at DESC')
    end

    def create
      Comment.create!(
        content: params[:comment]
        user_id: current_user
      )

      redirect_to homepage_index_path
    end

end
