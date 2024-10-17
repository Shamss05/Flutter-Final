import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  String _selectedChoice = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange.shade600,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: 40),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(width: 70),
                Text(
                  "Place Order",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text(
                  "Location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Container(
                  width: 380,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.orange.shade600,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 380,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 3, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.delivery_dining),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Delivery",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text("Arriving in approx. 25 mins")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Pay with",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ListTile(
                  title: const Text("Cash"),
                  leading: Radio<String>(
                    value: 'Option 1',
                    groupValue: _selectedChoice,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedChoice = value!;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text("Credit Card"),
                  leading: Radio<String>(
                    value: 'Option 2',
                    groupValue: _selectedChoice,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedChoice = value!;
                      });
                    },
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Payment summary",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal"),
                    Text("\$60"),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Fee"),
                    Text("\$5"),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Service Fee"),
                    Text("\$2"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Amount",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text(
                      "\$67",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Todo: waiting for noha
                      },
                      child: Text(
                        "Place Order",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.yellow.shade700),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
