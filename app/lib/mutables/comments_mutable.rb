Pakyow::App.mutable :comment do
  query :for_default_post do
    redis.lrange(:comments, 0, -1).each_with_index.map do |content, id|
      {
        id: id+1,
        content: content
      }
    end
  end

  action :create do |params|
    redis.lpush(:comments, params[:content])
  end
end

