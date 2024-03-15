// a) Create a class Client that have 2 private attributes:

// Name - can't be changed

// PurchasesAmount(double) - that have 2 methods: get(), add()

// b) Create a constructor that initialize the name

// c) Create a class LoyalClient that have 1 private attribute:

// PurchasesAmount(double) - that have 1 method: get() (use different name from the method in superclass)
// d) Create a method discount() that assign to PurchasesAmount (subclass) the value of PurchasesAmount (superclass) after reduction of 10%.

// e) Create a small test program (main)

class Client {
  String _name;
  double _purchasesAmount = 0;

  Client(this._name);
  double getPurchasesAmount() {
    return _purchasesAmount;
  }

  void add(double value) {
    _purchasesAmount += value;
  }
}

class LoyalClient extends Client {
  LoyalClient(String name) : super(name);

  double getPurchasesAmountLoyal() {
    return super.getPurchasesAmount();
  }

  void discount() {
    super.add(-super.getPurchasesAmount() * 0.1);
  }
}

void main() {
  Client client = Client('Ana');
  client.add(100);
  print(client.getPurchasesAmount());
  client.add(50);
  print(client.getPurchasesAmount());

  LoyalClient loyalClient = LoyalClient('Ana-Maria');
  print(loyalClient.getPurchasesAmountLoyal());
  loyalClient.add(50);
  print(loyalClient.getPurchasesAmountLoyal());
  loyalClient.discount();
  print(loyalClient.getPurchasesAmountLoyal());
}
