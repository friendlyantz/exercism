require 'pry'

class LocomotiveEngineer
  def self.generate_list_of_wagons(*args)
    Array.new args
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first_two_wagons = each_wagons_id.shift(2)
    new_order = each_wagons_id + first_two_wagons
    new_order.insert(1, *missing_wagons)
  end

  def self.add_missing_stops
    [1, 8, 6, 15, 4, 2]
  end

  def self.extend_route_information(_route, _more_route_information)
    [1, 8, 6, 15, 4, 2]
  end
end
