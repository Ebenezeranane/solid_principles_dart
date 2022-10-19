///The Liskov substitution principle LSP states that subclasses should be
///replaced with superclasses without changing the logical correctness of the
///program.
abstract class PaymentApi {
  hasGhCard();
  checkBalance();
}

class GhPay implements PaymentApi {
  @override
  checkBalance() {}

  @override
  hasGhCard() {}
}

class GooglePay implements PaymentApi {
  @override
  checkBalance() {}

  ///logically incorrect: [GooglePay] cant have a [hasGhCard]
  @override
  hasGhCard() {} //this method makes it unable for the class to be substituted with the parent
  //class PaymentApi because hasGhCard() makes it logically wrong
}

///Refactor : Segregate the classes using abstractions

abstract class MustHaveGhCard {
  hasGhanaCard();
}

abstract class PaymentApi2 {
  checkBalance();
}

class GhPay2 implements PaymentApi2, MustHaveGhCard {
  @override
  checkBalance() {}

  @override
  hasGhanaCard() {}
}

class GooglePay2 implements PaymentApi2 {
  @override
  checkBalance() {}
}
