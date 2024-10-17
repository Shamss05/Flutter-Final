import 'package:final_project/screens/place_order.dart';
import 'package:flutter/material.dart';
import 'package:final_project/components/cart_container.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
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
                      borderRadius: BorderRadius.circular(100)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(width: 110),
                Text(
                  "Cart",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CartContainer(),
                CartContainer(),
                CartContainer(),
                CartContainer(),
                CartContainer(),
              ],
            ),
          ),
          // Button Container
          Container(
            padding: EdgeInsets.all(16.0),
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (placeOrder) => PlaceOrder()));
                },
                child: Text(
                  "Checkout",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.yellow.shade700),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





