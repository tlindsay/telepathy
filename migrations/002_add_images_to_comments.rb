Sequel.migration do
  change do
    add_column :comments, :image, String
  end
end
