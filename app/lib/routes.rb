Pakyow::App.routes do
  default do
    data(:stats).view_default_post

    view.scope(:stats).mutate(:post, with: data(:stats).for_default_post).subscribe
    view.partial(:'comment-list').scope(:comment).mutate(:list, with: data(:comment).for_default_post).subscribe

    view.partial(:'comment-form').scope(:comment).bind({})
  end

  restful :comment, '/comments' do
    action :create do
      data(:comment).create(params[:comment])

      redirect :default
    end
  end

end
