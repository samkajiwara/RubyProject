

class Scripts < ActiveRecord::Migration[5.0]

 def self.up
        create_table :scripts do |t|
                t.column :input, :string, :limit => 100, :null =>false
                t.column :description, :text
                t.column :subject_id, :integer
                t.column :created_at, :timestamp
        end
 end

        def self.down
                drop_table :scripts
        end
end
