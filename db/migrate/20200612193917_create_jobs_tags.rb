class CreateJobsTags < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs_tags do |t|
      t.references :tag, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
