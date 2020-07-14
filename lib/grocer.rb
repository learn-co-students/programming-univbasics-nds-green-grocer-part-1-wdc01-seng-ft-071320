def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs

  collection.each_with_index do |grocery_item, item_index|
    if grocery_item[:item] == name
      return collection[item_index]
    end
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  consolidate_cart = []
  cart.each do |cart_item|
    if find_item_by_name_in_collection(cart_item[:item], consolidate_cart) == nil  
      consolidate_cart << {:item => cart_item[:item],
                           :price => cart_item[:price],
                           :clearance => cart_item[:clearance],
                           :count => 1
                          }
    else
      find_item_by_name_in_collection(cart_item[:item], consolidate_cart)[:count] += 1
    end
  end
  consolidate_cart
end


  