class DateCalculator

    def self.convert(day) # static method. not good!
        year = 1980
        while (day > 365) do
            if (year % 400 == 0 ||
                (year % 4 == 0 && year % 100 != 0))
                if (day > 366)
                    day -= 366
                    year += 1
                end
            else
                day -= 365
                year += 1
            end
        end
        return year
    end

end


if __FILE__ == $0
    puts DateCalculator.convert(ARGV[0].to_i)
end

# pseudo code

# start with Year = 1980
# while (days remaining > 365)
#   if Year is a leap year
#       then if possible, peel off 366 days and advance Year by 1
#   else
#       peel off 365 days and advance Year by 1
# return Year
