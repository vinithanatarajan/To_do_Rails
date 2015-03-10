todo_list = [
	[ "Grocery_list", "Buy vegetables"],
	[ "shopping_list", "Buy some chocolates"],
	[ "payment_list", "pay power bill"]

]

todo_list.each do |title, description|
	Todolist.create(title: title, description: description)

end


