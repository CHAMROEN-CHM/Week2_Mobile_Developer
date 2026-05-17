// Exercise 1
// list of skills ussing enum

enum Skills { Flutter, Dart, Other }

// Address class
class Address {
  final String city;
  final String street;
  final String zipCode;
  // constructors
  Address(this.city, this.street, this.zipCode);
}

class Employee {
  String _name;
  double _baseSalary;
  List<Skills> _skill = [];
  Address _address;
  int _yearOfExperient;

  // constructors
  Employee(
    this._name,
    this._baseSalary,
    this._yearOfExperient,
    this._address,
    this._skill,
  );

  // name constructor
  Employee.mobileDeveloper(String name, int yearOfExperient, Address address)
    : _name = name,
      _yearOfExperient = yearOfExperient,
      _address = address,
      _skill = [Skills.Dart, Skills.Flutter],
      _baseSalary = 4000;

  // method getSalary
  double getSalary() {
    double salary = _baseSalary;
    if (_yearOfExperient <= 0) {
      salary = 4000;
    } else {
      salary *= _yearOfExperient;
    }

    for (var i in skill) {
      if (i == Skills.Flutter) {
        salary += 5000;
      } else if (i == Skills.Dart) {
        salary += 3000;
      } else {
        salary += 1000;
      }
    }
    return salary;
  }

  // using getter
  get name => _name;
  get yearOfExperient => _yearOfExperient;
  get address => _address;
  get skill => _skill;
  get baseSalary => _baseSalary;

  String toString() {
    return "Name: ${name}\nYear of Experience: ${yearOfExperient}\nBaseSalary: ${getSalary()}\nAddress: ${address}\nSKills: ${skill}";
  }
}

void main() {
  Address add = Address("PP", "st 32", "1200");
  Employee emp1 = Employee.mobileDeveloper("Sam", 1, add);
  print(emp1);
}

Exercise 2 : Bank System

class BankAccount {
  int id;
  String name;
  double _balance = 0;
  // method to check the duplicated id
  BankAccount({required this.id, required this.name});
  double get balance => _balance; // print the balance

  // methods
  void credit(double amount) {
    if (amount <= 0) {
      throw Exception(
        "Your amount: ${amount} must be greater then 0. Can't credit.",
      );
    }
    _balance += amount;
  }

  void withdraw(double amount) {
    if (balance <= 0) {
      throw Exception("Can't Withdraw Your current balance is : ${balance}");
    }
    if (_balance < amount) {
      throw Exception(
        "Not Enough balance.Current balance: ${balance} Try Again.",
      );
    }
    _balance -= amount;
  }
}

class Bank {
  // list of the accounts
  List<BankAccount> bankAccount = [];
  String name;
  // constructor
  Bank({required this.name});

  BankAccount createAccount(int accountID, String accountOwner) {
    for (var i in bankAccount) {
      if (i.id == accountID) {
        throw Exception("This account ID is existed use other ID.");
      }
    }

    // create object for BankAccount class and add it to the list
    BankAccount newAccount = BankAccount(id: accountID, name: accountOwner);
    bankAccount.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}

Exercise 3 : Duration
class MyDuration {
  // Display the duration in a readable format
  final int _milliseconds;
  // default constructor
  MyDuration(this._milliseconds) {
    if (_milliseconds < 0) {
      throw Exception("Can't be Negative.");
    }
  }
  // named constructors
  MyDuration.fromHours(int h) : _milliseconds = h * 3600000;
  MyDuration.fromMinutes(int min) : _milliseconds = min * 60000;
  int get milliseconds => _milliseconds;

  // + operator
  MyDuration operator +(MyDuration other) {
    return MyDuration(_milliseconds + other._milliseconds);
  }

  // - operator
  MyDuration operator -(MyDuration other) {
    return MyDuration(_milliseconds - other._milliseconds);
  }

  // compare operator
  bool operator <(MyDuration other) {
    return _milliseconds < other._milliseconds;
  }

  bool operator >(MyDuration other) {
    return _milliseconds > other._milliseconds;
  }

  @override
  String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
    int hours = (minutes / 60).floor();
    minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
}

void main() {
  MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
  MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
  print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
  print(duration1 > duration2); //true

  try {
    print(duration2 - duration1); // This will throw an exception
  } catch (e) {
    print(e);
  }
}

Exercise 4 : Bonus : Shop Management
class address
class Address {
  final String city;
  final String street;
  final String country;
  Address(this.city, this.street, this.country);
}

// Product class
class Product {
  int productQuantity;
  String productName;
  double productPrice;
  Product({
    required this.productQuantity,
    required this.productName,
    required this.productPrice,
  });
}

// DeliveryMethod using enum
enum DeliveryMethod { delivery, pickup }

// Order class
class Order {
  List<Product> products = [];
  DeliveryMethod d_Method;
  Address? address;
  Order(this.products, this.address, this.d_Method);
  double getTotalAmount() {
    double total = 0;
    for (var prod in products) {
      total += (prod.productPrice * prod.productQuantity);
    }
    return total;
  }

  void printOrder() {
    if (d_Method == DeliveryMethod.pickup) {
      print("Deliver method: Pickup.");
    } else {
      print(
        "Deliver method : Delivery",
      );
    }
  }
}

// Customer class
class Customer {
  final String name;
  final String gmail;
  final String? phoneNum;
  List<Order> orders = [];
  Customer({required this.name, required this.gmail, this.phoneNum});

  void addOrders(Order order) {
    orders.add(order);
  }
}

void main() {
  // Address object
  Address add = Address("PP", "st 32", "Cambodia");
  Product pro1 = Product(
    productQuantity: 2,
    productName: "phone",
    productPrice: 50,
  );
  Product pro2 = Product(
    productQuantity: 1,
    productName: "Fridge",
    productPrice: 200,
  );
  Product pro3 = Product(
    productQuantity: 4,
    productName: "Bottle",
    productPrice: 10,
  );
  Order ord1 = Order([pro1, pro2], add, DeliveryMethod.pickup);
  Order ord2 = Order([pro3], add, DeliveryMethod.pickup);
  Customer cus = Customer(name: "sam", gmail: "chameoen@gmail.com");
  cus.addOrders(ord1);
  double price = ord1.getTotalAmount();
  print(
    "Customer: ${cus}\nAddress: ${add.city},${add.street},${add.country}\nProduct: ${[pro1.productName, pro2.productName]}\nTotal amount: ${price}",
  );
  ord1.printOrder();

  cus.addOrders(ord2);
  price = ord1.getTotalAmount() + ord2.getTotalAmount();
  print(
    "Customer: ${cus}\nAddress: ${add.city},${add.street},${add.country}\nProduct: ${[pro1.productName, pro2.productName,pro3.productName]}\nTotal amount: ${price}",
  );
  ord2.printOrder();
}
