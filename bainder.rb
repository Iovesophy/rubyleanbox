initial_data = gets.split.map{|v| v.to_i}
#pon is pocket number
#pin is card number
#rpin is one page number
 pon = initial_data[0]
 pin = initial_data[1]
 rpin = pon * 2

def ponbox(oneline_card_number,current_card_number,pin_card_number)
  pon_block = []
  point = current_card_number

  oneline_card_number.times do
      point -= 1
      pon_block.push(point)
  end
  index = pon_block.index(pin_card_number)
  neo_index = oneline_card_number - index - 1
 p pon_block[neo_index]
end

cardline_base = pin/rpin
cardline_neo = pin/rpin.to_f
if cardline_base < cardline_neo
    cardline_base += 1
    current_cardline = cardline_base
else 
    current_cardline = cardline_base
end

current_cardline
flnum = current_cardline * rpin + 1

ponbox(rpin,flnum,pin)

