class CreateCirclesMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :circles_members do |t|
      t.references :circle, foreign_key: true
      t.references :member, foreign_key: true
    end
  end
end
