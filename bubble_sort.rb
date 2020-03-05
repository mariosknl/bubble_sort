def bubble_sort(arr)
    loop do
        swapped = false
        (arr.length - 1).times do |i|
            if arr[i] > arr[i+1]
                arr[i],arr[i+1] = arr[i+1],arr[i]
                swapped = true
            end
        end
        break if swapped == false
    end
    print arr
end


def bubble_sort_by(array)
    loop do
        swapped = false
        (array.length-1).times do |j|
            my_method = yield(array[j], array[j+1])
            if my_method.positive?
                array[j], array[j+1] = array[j+1], array[j]
                swapped = true
            end
        end
        break if swapped == false
    end
    array
end
