require 'util/helpers'
require 'util/print_diffs'

begin
  require 'mongo_mapper'
  require 'mongo_mapper/accessible'
  require 'mongo_mapper/protected'
rescue Exception => e
  #puts "NOT LOADING MONGO MAPPER #{e}"
end

begin
  require 'active_model'
  require 'active_record/mass_assignment_security'
rescue Exception => e
  #puts "NOT LOADING ACTIVE RECORD #{e}"
end
