import 'package:flutter/material.dart';

class ItemsContainer extends StatefulWidget {
  final String sizeText;
  final bool isSelected;
  final VoidCallback onTap;
  final int sizePrice;
  final double width;
  final double height;

  const ItemsContainer(
      {required this.sizeText, required this.isSelected, required this.onTap, required this.sizePrice, required this.width, required this.height, Key? key})
      : super(key: key);

  @override
  State<ItemsContainer> createState() => _ItemsContainerState();
}

// int sizePrice=12;

class _ItemsContainerState extends State<ItemsContainer> {

  @override
  Widget build(BuildContext context) {
    Color _containerColor = widget.isSelected ? Colors.orange.shade600 : Colors.transparent;
    Color _textColor = widget.isSelected ? Colors.white : Colors.black;
    Color _borderColor = widget.isSelected ? Colors.orange.shade600 : Colors.yellowAccent.shade700;

    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: _containerColor,
          border: Border.all(color: _borderColor, width: 2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            widget.sizeText,
            style: TextStyle(
              color: _textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
