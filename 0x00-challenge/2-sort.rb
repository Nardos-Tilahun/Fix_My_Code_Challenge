###
#
#  Sort integer
#
###


result = []

ARGV.each do |arg|
    # Check if it's an integer
    next unless arg =~ /^-?\d+$/

    # Convert to integer
    i_arg = arg.to_i

    # Find the correct position to insert
    is_inserted = false
    i = 0
    l = result.size

    while !is_inserted && i < l do
        if result[i] > i_arg
            result.insert(i, i_arg)
            is_inserted = true
            break
        end
        i += 1
    end

    result << i_arg unless is_inserted
end

puts result.reverse

