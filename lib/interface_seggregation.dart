///The interface Segregation states that interfaces must be broken down into
///simpler forms such that a client does not have to implement a behavior they
///don't need.

abstract class PaymentApi {
  verifyGhCard();
  makePayment();
}

class GhPay implements PaymentApi {
  @override
  makePayment(){}

  @override
  verifyGhCard() {}
}

class GooglePay implements PaymentApi {
  @override
  makePayment(){}

  @override
  verifyGhCard() {} //GooglePay doesn't need to verifyGhCard() 
}


///refactor: segregate the two abstract methods and implement 
abstract class Verify{
    verifyGhCard();
}


abstract class PaymentApi1 {
  makePayment();
}


class GhPay1 implements PaymentApi1,Verify {
  @override
  makePayment(){}


  @override
  verifyGhCard() {}

}

class GooglePay1 implements PaymentApi1 {
  @override
  makePayment(){}
}


