num = gets.to_i
coin = gets.to_s

basearray = []
num.times do |i|
    basearray.push(coin[i])
end

black_reverse = basearray
white_reverse = basearray

command = []
    @base = "white_reverse[i+1] == 'b'"
    num.times do |n|
        n += 1
        command.push(@base)
        @base += "white_reverse[i+#{n}] == 'b'"
    end
commandb = []
    @baseb = "black_reverse[i+1] == w"
    num.times do |n|
        n += 1
        commandb.push(@baseb)
        @baseb += "black_reverse[i+#{n}] == 'w'"
    end
    #p command
    #p commandb
    #eval('p white_reverse[i] == "w" && #{command[c]} white_reverse[i+c+2] == "w" ');
i = 0
while true do
    #num.times do |c| #オセロの枚数分、繰り返す 
        #evalが使えない。。。カウントタイムアップなのでとりあえず提出
        if white_reverse[i] == "w" && white_reverse[i + 3] == "w" 
            if command[c]
            c += 1
                c.times do |v|
                    basearray[v+1] = "w"
                end
            end
        elsif black_reverse[i] == "b" && black_reverse[i + 3] == "b"
            if commandb[c]
            c += 1
                c.times do |v|
                    basearray[v+1] = "b"
                end
            end
        else
            break
        end
        i += 1
    #end
end

#配列からbの個数表示
p basearray.grep(/[b]/).length
