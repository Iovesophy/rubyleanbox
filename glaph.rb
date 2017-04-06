titlecount = gets.to_i
titledata = gets.split.map(&:to_s)

datacount = gets.to_i #=> 3

@databody = []    #=> 名前データid以外
    datacount.times do |i|
        data = gets.split
        @databody.push(data[1])
    end

#一番長い文字列取り出し
long_char  = @databody.max_by{ |name|  name.size }
long_title = titledata.max_by{|title| title.size }

#タイトルと名前で長い文字列比較
if long_char > long_title
    namespase = long_char.length + 2
else
    namespase = long_title.length + 2
end

#区切り生成
line = ""
namespase.times do |i|
    line += "-"
end

#title生成
def title_make(count,title,namespase)
        printf("| %s ",title[0])
        count -= 1
        count.times do |t|
            spasecount = namespase - title[t+1].length - 1
                spase = ""
                spasecount.times do |i|
                    spase += " "
                end
            printf("| %s%s",title[t+1],spase)
        end
    puts "|"
end

title_make(titlecount,titledata,namespase)
printf("|----|%s|\n",line)

datacount.times do |t|
    spase = namespase - (@databody[t].length + 1)
    spasebody = ""
    spase.times do |i|
        spasebody += " "
    end
printf("|\s%s\s\s|\s%s%s|\n",t+1,@databody[t],spasebody)
end

