Sequel.migration do
  up do
    create_table :comments do
      primary_key :id
      String :content
    end
  end

  down do
    drop_table :comments
  end
end
