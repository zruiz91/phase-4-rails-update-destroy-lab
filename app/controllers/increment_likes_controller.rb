class IncrementLikesController < ApplicationController
    def increment_likes
        bird = Bird.find_by(id: params[:id])
        if bird
            bird.update(likes: bird.lkes + 1)
            rend json: bird
        else
            render json: { error: "Bird not found" }, status: :not_found
        end
    end
end
