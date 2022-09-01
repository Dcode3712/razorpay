import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class buynow extends StatefulWidget {
  const buynow({Key? key}) : super(key: key);

  @override
  State<buynow> createState() => _buynowState();
}

class _buynowState extends State<buynow> {
  String name = "Redmi 10 Prime";
  String details =
      "Bifrost Blue 4GB RAM 64GB ROM |Helio G88 with extendable RAM Upto 2GB |FHD+ 90Hz Adaptive Sync Display";
  int price = 10999;

  bool status = false;

  late Razorpay _razorpay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PaymentPage"),
      ),
      body:
           SafeArea(
             child: Column(
                children: [

                       Image(
                    image: NetworkImage(
                        "https://images-eu.ssl-images-amazon.com/images/I/41tbmj1WoyL._SX300_SY300_QL70_FMwebp_.jpg"),
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${price}₹"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(details),
                  ),
                  
                  ElevatedButton(onPressed: () {
                    
                  }, child: Text("Buy Now"))
                ],
              ),
           )
          // : Center(child: CircularProgressIndicator()),
    );
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_live_ILgsfZCZoFIKMb',
      'amount': price*100,
      'name': name,
      'description': details,
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': '', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }


}
