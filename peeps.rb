#Instructions:
#    Problem 1: 
#        Description 
#            Given a list of people with their birth and end years (all between 1900 and 2000), find the year with the most number of people alive.
#        Code 
#            Solve using a language of your choice and dataset of your own creation.
#        Submission 
#            Please upload your code, dataset, and example of the program’s output to Bit Bucket or Github. Please include any graphs or charts created by your program.

# Note this was my first time using Ruby, so it may not conform to Ruby coding norms

require 'Set'
require 'pp'
 #Create static array to store years alive for all people
YEARS = []
#Create array with ID, birth year, and death year of people
peeps = Set.new([
[1,1903,1988],
[2,1917,1993],
[3,1954,1999],
[4,1965,1984],
[5,1957,1990],
[6,1935,1945],
[7,1997,1999],
[8,1982,1994],
[9,1934,1956],
[10,1924,1988],
[11,1978,1995],
[12,1901,1975],
[13,1901,1963],
[14,1992,1996],
[15,1936,1958],
[16,1967,1977],
[17,1993,1995],
[18,1944,1982],
[19,1912,1976],
[20,1925,1943]
])

#Define function to determine the lifespan of people, this function isn't necessary for the task at hand, but provides more information the lifespans of the people
#id = ID of person, first value in array peeps
#var1 = Birth year of person, second value in array peeps
#var2 = Death year of person, third value in array peeps
def lifespan (id, var1, var2)

	id = id
	born = var1
	died = var2
	lifespan = var2 - var1 + 1
	puts " Person #{id} lived during #{lifespan} years between #{born} and #{died}"
end

#Define function to determine which years people were alive, and add those values to YEARS
#id = ID of person, first value in array peeps
#var1 = Birth year of person, second value in array peeps
#var2 = Death year of person, third value in array peeps
def yearsAlive (id, var1, var2)

	id = id
	born = var1
	died = var2

	i = born
	loop do
		YEARS.push(i) #Push the year value onto YEARS array
		if i == died
			break
		end
		i += 1

	end
end

#For each person, print how many years they lived and the range of years they lived
peeps.each do |peeps|
	lifespan(peeps[0],peeps[1],peeps[2])
	yearsAlive(peeps[0],peeps[1],peeps[2])
end

#Determine the year which the largest number of our people were alive.
most_frequent_item = YEARS.uniq.max_by{ |i| YEARS.count( i ) }
puts "The year that the most people from our data set were alive is #{most_frequent_item}"
