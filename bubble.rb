##
# Takes an array and returns a sorted array.
def bubble_sort(array)
    array_size = array.size
    num_sorted = 0
    unsorted = true
    while unsorted
        # track number of swaps, if 0 at the end, then it is sorted.
        swaps = 0
        # check (n-k) unsorted elements
        for i in 0..(array_size - num_sorted)
            # if out of order, swap
            if array[i+1] && array[i] > array[i+1]
                array[i], array[i+1] = array[i+1], array[i]
                swaps += 1
            end
        end
        # end loop if no swaps were made
        (swaps == 0) ? unsorted = false : unsorted = true
        # we have sorted one element
        num_sorted += 1
    end
    array
end

p bubble_sort([4,3,78,2,0,2])