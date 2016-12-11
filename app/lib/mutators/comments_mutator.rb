Pakyow::App.mutators :comment do
  mutator :list do |view, data|
    view.apply(data)
  end
end

