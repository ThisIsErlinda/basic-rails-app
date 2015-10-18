class FavoritesController < ApplicationController
   def create
     post = Post.find(params[:post_id])
     favorite = current_user.favorites.build(post: post)
 
     if favorite.save
       flash[:notice] = "Yay, awesome favorite!"
       redirect_to [post.topic, post]
     else
      flase[:error] = "Oops, error favoriting this post."
      redirect_to [post.topic, post]
     end
   end

   def destroy
    post = Post.find(params[:post_id])
    favorite = current_user.favorites.find(params[:id])

    if favorite.destroy
      flash[:notice] = "Sad to see you go."
       redirect_to [post.topic, post]
    else
      flash[:error] = "Beep Boop Beep, try again."
      redirect_to [post.topic, post]
    end
  end

end
