class DropTable < ActiveRecord::Migration
    def change
      drop_table :school_class
    end
  end