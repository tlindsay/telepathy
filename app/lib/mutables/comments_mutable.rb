Pakyow::App.mutable :comment do
  query :for_default_post do
    Comment.all.reverse.map(&:values)
  end

  action :create do |params|
    Comment.create(content: params[:content])
  end
end

