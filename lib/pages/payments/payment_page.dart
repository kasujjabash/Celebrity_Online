import 'package:celebrity_online/pages/payments/payment_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paystack/flutter_paystack.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController amouuntController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  var publicKey = 'pk_test_ee53d33cf76ac1c2974d02da7dabdff0b1f1ece4';
  final plugin = PaystackPlugin();
  String message = '';

  @override
  void initState() {
    super.initState();

    plugin.initialize(publicKey: publicKey);
  }

  void makePayment() async{
    int price = int.parse(amouuntController.text) * 100;
    Charge charge = Charge()
    ..amount = price
    ..reference = 'ref _${DateTime.now()}'
    ..email = emailController.text
    ..currency = 'USDC';

    CheckoutResponse response = await plugin.checkout(
      context,
      method: CheckoutMethod.card,
      charge: charge,
    );

    if(response.status == true){
      message = 'Payment was successful. Ref: ${response.reference}';
      if(mounted){}
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder:(context) =>PaymentSuccess(message: message)),
        ModalRoute.withName('/')
        );
    }else{
      print(response.message);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: amouuntController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Enter amount';
                  }
                  return null;
                },
                decoration:const InputDecoration(
                  prefix: Text('USDC: '),
                  label: Text('Amount'),
                  border: OutlineInputBorder(),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: TextFormField(
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Enter email';
                    }
                    return null;
                  },
                  decoration:const InputDecoration(
                    hintText: 'bashir@gmail.com',
                    label: Text('Email'),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(onPressed: (){
                  makePayment();
                },
                child: const Text('Order')),
              )
            ],
          )),
      ),
    );
  }
}