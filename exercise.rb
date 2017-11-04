venues = [
{ address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
{ address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
{ address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
{ address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
{ address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
{ address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
{ address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
{ address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }

]

#### PLAN

# find hash with key:wheelchair_accessible == true
# check if capacity >= 150
# return venue address

# venues = array >> hashes

# accessible_venues = Array.new()


def accessible(array, key)
  accessible_venues = Array.new()
  array.each do |venue|
    venue.each do |k,v|
      if k == key
        if v == true
            accessible_venues << venue
        end
      end
    end
  end
  return accessible_venues
end


def capacity(array, key)
  x = accessible(array,key)
  capacity_venues = Array.new()
  x.each do |venue|
    venue.each do |k,v|
      if k == :capacity
        if v >= 150
            capacity_venues << venue
        end
      end
    end
  end
  return capacity_venues
end
# # #iterate each venue in venues
# venues.each do |venue|
# # => iterate each key and value in hashes
#   venue.each do |key, value|
# # => if key equals wheelchair_accessible
#     if key == :wheelchair_accessible
# # =>  if value == true
#       if value == true
# # =>    check if capacity >= 150
#         if :capacity >= 150
#           accessible_venues << value
#         end
#       end
#     end
#   end
# end


# a_venues = accessible(venues, :wheelchair_accessible)
# # capacity_accessible_venues = capacity(a_venues, :capactiy)
# #
# # p capacity_accessible_venues
#
# p a_venues

occ = capacity(venues, :wheelchair_accessible)

# p y

# y.each do |venue|
#   xyz = Array.new
#   xyz << venue[:address]
# end

def last(array, key)
  xyz = Array.new
  array.each do |venue|
    xyz << venue[key]
  end
  return xyz
end

# proper_venues = Array.new

# proper_venues << y[0]
# print proper_venues

the_results = last(occ, :address)
p the_results
