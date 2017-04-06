date = gets.split.map(&:to_i)

def datachange(cmonth,cdate,date)
if cmonth < 10 && cdate < 10
    date.push(0,0)
elsif cmonth < 10 || cdate < 10
    date.push(0)
end
date = date.join("")
date = date.split("")
date = date.map { |str| str.to_i}
@date = date.sort
end
datachange(date[0],date[1],date)

@count = 0
a    = gets.split.map{|v|v.to_i}
b    = gets.split.map{|v|v.to_i}
m    = gets.split.map{|v|v.to_i}
@baseneo = [0,0,0,0]
        1620.times do |i|
        @baseneo[0] = ((a[0] * @baseneo[0] + b[0]) % m[0]) % 10
        @baseneo[1] = ((a[1] * @baseneo[1] + b[1]) % m[1]) % 10
        @baseneo[2] = ((a[2] * @baseneo[2] + b[2]) % m[2]) % 10
        @baseneo[3] = ((a[3] * @baseneo[3] + b[3]) % m[3]) % 10
        p @base = @baseneo.sort
        p @date
            if @base == @date
                p i + 1
            end
        end

