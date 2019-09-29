class DropSchoolclasses < ActiveRecord::Migration
        def change
            drop_table :schoolclasses
        end
  end