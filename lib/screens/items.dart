import 'package:flutter/material.dart';
import 'package:final_project/components/items_container.dart';
import 'package:final_project/components/button_container.dart';
import 'package:final_project/screens/cart.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

int counter = 1;
int sizePrice = 12;
int price = sizePrice * counter;

class _ItemsState extends State<Items> {
  int _selectedIndex = -1;

  void _onSelectContainer(int index, int newSizePrice) {
    setState(() {
      _selectedIndex = index;
      sizePrice = newSizePrice;
      price = sizePrice * counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              SizedBox(width: 40,),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(width: 70,),
              Text("Item Name", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Image.asset('assets/images/greek-salad-with-olives-bell-pepper.jpg'),
          ),
          Text("Ingredients", style: TextStyle(fontSize: 18)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemsContainer(
                width: 100,
                height: 50,
                sizeText: "20cm",
                sizePrice: 12,
                isSelected: _selectedIndex == 0,
                onTap: () => _onSelectContainer(0, 12),
              ),
              ItemsContainer(
                width: 100,
                height: 50,
                sizeText: "25cm",
                sizePrice: 15,
                isSelected: _selectedIndex == 1,
                onTap: () => _onSelectContainer(1, 15),
              ),
              ItemsContainer(
                width: 100,
                height: 50,
                sizeText: "30cm",
                sizePrice: 18,
                isSelected: _selectedIndex == 2,
                onTap: () => _onSelectContainer(2, 18),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 40),
              Text(
                "\$$price",
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
              ),
              SizedBox(width: 89),
              ButtonContainer(
                icon: Icons.remove,
                function: () {
                  setState(() {
                    if (counter > 1) {
                      counter--;
                      price = sizePrice * counter;
                    }
                  });
                },
              ),
              Container(
                width: 40,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Center(
                  child: Text(
                    '$counter',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ),
              ButtonContainer(
                icon: Icons.add,
                function: () {
                  setState(() {
                    counter++;
                    price = sizePrice * counter;
                  });
                },
              ),
              SizedBox(width: 30,),
            ],
          ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (cart) => Cart()));
              },
              child: Text("Add To Cart", style: TextStyle(color: Colors.black, fontSize: 20)),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
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


