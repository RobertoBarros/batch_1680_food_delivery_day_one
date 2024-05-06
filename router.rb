class Router
  def initialize(meals_controller, customers_controller)
    @meals_controller = meals_controller
    @customers_controller = customers_controller
  end

  def run
    loop do
      print_actions
      action = gets.chomp.to_i
      break if action == 99
      system "clear"
      route_action(action)
    end
  end

  def print_actions
    puts "-" * 80
    puts "1. Add a meal"
    puts "2. List all meals"
    puts "-" * 80
    puts "3. Add a customer"
    puts "4. List all customers"

    puts "-" * 80
    puts "99. Exit"
  end

  def route_action(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customers_controller.add
    when 4 then @customers_controller.list
    end
  end
end
