class HomepageController < ActionController::Base

    def index
      @comments = Comment.all.order('created_at DESC')
      # On était sensé afficher seulement 5 comments
    end

    def create
      Comment.create!(
        content: params[:comment]
        user_id: current_user
      )
      # Et si la validation échoue ?
        
      redirect_to homepage_index_path
    end
    
    # Il manque des features...
end
