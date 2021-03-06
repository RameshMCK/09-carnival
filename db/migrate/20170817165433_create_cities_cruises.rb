
class CreateCitiesCruises < ActiveRecord::Migration[5.1]
    #junction table or joint table. 
    #no primary key
    #tables should be alphabetical
    # id: false -- do not put primary key
  def change
    create_table :cities_cruises, id: false do |t|
      t.belongs_to :city, index: true, null: false
      t.belongs_to :cruise, index: true, null: false
    end

    add_foreign_key :cities_cruises, :cities
    add_foreign_key :cities_cruises, :cruises
  end
end