import 'package:flutter/material.dart';

Widget transactionType(int itemCount, int value, String title, double price) {
  return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      primary: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
                color: index == 1 ? Colors.red : Colors.yellow,
                borderRadius: BorderRadius.circular(15)),
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.red, width: 10),
                      ),
                      child: Center(
                        child: Text("${value.toString()}"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Column(
                        children: [
                          Text("${title}"),
                          Text("\$ ${price.toString()}")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
