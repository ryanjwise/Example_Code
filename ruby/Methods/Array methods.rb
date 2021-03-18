arr = [1,2,3,4,5,6]
arr2 = [7,8,9,10,11]

arr.length          # retruns length od array
arr.join            # returns array as one continuous element "123456"
arr.include?()      # Searches for passed element and returns true or false
arr.delete()        # deletes any antries with a matcing value 
arr.delete_at()     # Delete entry at passed index
arr.flatten!        # Will flatten a multidimensional array
arr3 = arr + arr2   # Will add the two arrays together [1,2,3,4,5,6,7,8,9,10,11]]