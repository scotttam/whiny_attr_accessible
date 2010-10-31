ActiveRecord::Base.establish_connection('adapter' => 'sqlite3', 'database' => 'test')

class CreateModelForTesting < ActiveRecord::Migration
  def self.up
    create_table :ar_tests do |t|
      t.string  :protected
      t.string  :unprotected
    end
  end

  def self.down
    drop_table :ar_tests
  end
end
