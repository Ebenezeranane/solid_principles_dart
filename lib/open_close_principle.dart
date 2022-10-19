//The Open close Principle states that modifications are not allowed for classes but extensions are allowed
//as the name implies open for extension close for modifications
/// Suppose The [PaymentApi] which initially had only [googlePay] and [ghPay] needs to meet another payment [WorldRemit]
/// condition it would violate the principle of Open and close

class PaymentApi {
  checkType(paymentType) {
    if (paymentType is GooglePay) {
      return GooglePay();
    } else {
    if (paymentType is GhPay) {
        return GhPay();
      } else {
        ///another condition for [WorldRemit] 
    if (paymentType is WorldRemit) {
        return WorldRemit(); 
        }
      }
    }
  }
}

class GooglePay {}

class GhPay {}

class WorldRemit {}


///Refactor: Use abstraction to and add the [WorldRemit] and implement concrete methods
abstract class PaymentApis {}

class GooglePay1 implements PaymentApis{}

class GhPay1 implements PaymentApis{}

class WorldRemit1 implements PaymentApis{} //WorldRemit class now added via abstract class PaymentApis1