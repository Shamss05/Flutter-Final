import 'package:flutter/material.dart';
import 'package:final_project/components/button_container.dart';
import 'package:final_project/components/items_container.dart';

class CartContainer extends StatefulWidget {
  const CartContainer({super.key});

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {

  int _selectedIndex = -1;

  List<Map<String, dynamic>> _cartItems = [
    {
      'name': 'Greek Salad',
      'image': 'assets/images/greek-salad-with-olives-bell-pepper.jpg',
      'sizePrice': 12,
      'counter': 1,
    },
  ];

  void _onSelectContainer(int index, int newSizePrice, int itemIndex) {
    setState(() {
      _selectedIndex = index;
      _cartItems[itemIndex]['sizePrice'] = newSizePrice;
    });
  }

  void _removeItem(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: List.generate(_cartItems.length, (index) {
          final item = _cartItems[index];
          final itemPrice = item['sizePrice'] * item['counter'];
          return Container(
            margin: EdgeInsets.only(bottom: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 4,
                color: Colors.yellowAccent.shade700,
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  item['image'],
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ItemsContainer(
                            width: 70,
                            height: 25,
                            sizeText: "20cm",
                            sizePrice: 12,
                            isSelected: _selectedIndex == 0,
                            onTap: () => _onSelectContainer(0, 12, index),
                          ),
                          SizedBox(width: 5),
                          ItemsContainer(
                            width: 70,
                            height: 25,
                            sizeText: "25cm",
                            sizePrice: 15,
                            isSelected: _selectedIndex == 1,
                            onTap: () => _onSelectContainer(1, 15, index),
                          ),
                          SizedBox(width: 5),
                          ItemsContainer(
                            width: 70,
                            height: 25,
                            sizeText: "30cm",
                            sizePrice: 18,
                            isSelected: _selectedIndex == 2,
                            onTap: () => _onSelectContainer(2, 18, index),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$$itemPrice",
                            style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            children: [
                              if (item['counter'] == 1)
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  color: Colors.orange.shade600,
                                  onPressed: () {
                                    _removeItem(index);
                                  },
                                )
                              else
                                ButtonContainer(
                                  icon: Icons.remove,
                                  function: () {
                                    setState(() {
                                      if (item['counter'] > 1) {
                                        item['counter']--;
                                      }
                                    });
                                  },
                                ),
                              SizedBox(width: 10),
                              Container(
                                width: 30,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white24,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.grey, width: 2),
                                ),
                                child: Center(
                                  child: Text(
                                    '${item['counter']}',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              ButtonContainer(
                                icon: Icons.add,
                                function: () {
                                  setState(() {
                                    item['counter']++;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
