card_number = "5541808923795240"

def luhn_check(cc_num)
    digits_array = cc_num.to_s.chars.map(&:to_i) #Convert the number into an array of digits
    #Double every other digit from the right, and substract 9 if the result is more than 9
    sum = digits_array.reverse.each_with_index.sum do |digit, index|
        if index.even?
            digit # Keep every other digit starting from the right
        else
            doubled = digit * 2
            doubled > 9 ? doubled - 9 : doubled # If doubling is more than 9, substract 9
        end
    end

    sum % 10 == 0 # checks if the total sum is divisible by 10
end
# Your Luhn Algorithm Here

puts luhn_check(card_number)
puts luhn_check(5541801923795240)


# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
