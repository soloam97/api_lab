class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.belongs_to :company, foreign_key: true
      t.string :name
      t.string :place
      t.integer :company_id

      t.timestamps
    end
  end
end
