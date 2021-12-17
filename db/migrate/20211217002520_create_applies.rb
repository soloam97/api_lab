class CreateApplies < ActiveRecord::Migration[6.1]
  def change
    create_table :applies do |t|
      t.belongs_to :jobs
      t.belongs_to :geeks
      t.integer :job_id
      t.integer :geek_id
      t.boolean :read
      t.boolean :invited

      t.timestamps
    end
  end
end
