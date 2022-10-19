/// The single responsibility SRP states that a class should have only one reason to change
/// An example is illustrated using the PaymentApi class

/// The [MakePayment] class violates the SRP principle because the class also implements different methods 
/// that is [getBalance()] and [printBalance()]
class MakePayment {

  void getPayment() {
    print("getting current payment...");
  }

  void printPayment(){
    print("printing payment...");
  }

 void getBalance() {
    print("getting current balance...");
  }

void printBalance(){
    print("printing balance...");
  }
 
}

// Refactor: The getBalance and PrintBalance should be segregated into their own classes

abstract class MakePaymentAbstract{}

class GetPayment extends MakePaymentAbstract{}

class PrintPayment extends MakePaymentAbstract{}

class GetBalance{
  void getBalance() {
    print("getting current balance...");
  }
}

class PrintBalance{void printBalance(){
    print("printing balance...");
  }}
