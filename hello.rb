name = "Fernando"
count = sum = 0

12.times do
    count += 1
    sum   += count
    puts "Hello " + name + " - " + count.to_s + " - " + sum.to_s
end