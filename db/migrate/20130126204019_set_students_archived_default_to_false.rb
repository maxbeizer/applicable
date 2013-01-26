class SetStudentsArchivedDefaultToFalse < ActiveRecord::Migration
  def up
    # iterates over archived column in the database and sets all
    # null values to false,  then sets the column to NOT NULL
    change_column_null :students, :archived, false, false
    # sets columns default to false
    change_column_default :students, :archived, false
  end

  def down
    #allows NULL for archived's value
    change_column_null :students, :archived, true
    #reverts archived's default value to NULL
    change_column_default :students, :archived, nil
  end
end
