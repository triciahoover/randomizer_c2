#This is a program created by Tricia Hoover
# Date 3/27/2018

def assign_pairs (student_names) #Function that receives an array as an argument
  shuffled_students = student_names.shuffle  #Creates a new array that is a shuffled version of the array passed in the argument
  pair = shuffled_students.each_slice(2).to_a #Create a new array that holds slices of arrays broken down by two students
  if pair.last.count == 1  #If the last group only has one person in it,
    pair.first.push(pair.last[0])  #push the last person into the first array of students
    pair.pop  #removes the last array
  end
  p pair
  pair.push(gets.chomp)
end

assign_pairs(["Lisa", "Grant", "Justin", "Zach", "Kris", "Don"])  #Run the function


# students_names in an array that is passed as an argument

# shuffled_students is an array that is a shuffled version of student_names

# pair is a new array that creates nested arrays of groups of two

#pair[[pair.first], [pair.last]]
