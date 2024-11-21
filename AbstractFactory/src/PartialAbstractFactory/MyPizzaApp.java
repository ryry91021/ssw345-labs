package PartialAbstractFactory;

public class MyPizzaApp {

    public static void main(String[] args) {
        if (args.length != 2) {
            System.out.println("Usage: java MyPizzaApp <franchise> <pizzaType>");
            System.out.println("Example: java MyPizzaApp NYPizzaStore cheese");
            return;
        }

        String franchise = args[0];
        String pizzaType = args[1];

        PizzaStore store;
        Pizza pizza;

        if (franchise.equalsIgnoreCase("NYPizzaStore")) {
            store = new NYPizzaStore();
        } else if (franchise.equalsIgnoreCase("ChicagoPizzaStore")) {
            store = new ChicagoPizzaStore();
        } else {
            System.out.println("Error: Invalid franchise entered. Use 'NYPizzaStore' or 'ChicagoPizzaStore'.");
            return;
        }

        // Order the pizza based on the type
        try {
            pizza = store.orderPizza(pizzaType);
            System.out.println("You ordered a " + pizza.getName());
        } catch (NullPointerException e) {
            System.out.println("Error: Invalid pizza type entered. Use 'cheese', 'veggie', 'clam', or 'pepperoni'.");
        }
    }
}
