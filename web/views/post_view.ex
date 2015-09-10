defmodule UnblogasoApi.PostView do
  use UnblogasoApi.Web, :view

  def render("index.json", %{posts: posts}) do
    %{posts: render_many(posts, UnblogasoApi.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, UnblogasoApi.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      body: post.body}
  end
end
