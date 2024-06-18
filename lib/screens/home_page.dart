import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/expense.png'),
                    ),
                    Text('Daily Expense'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/income.png'),
                    ),
                    Text('Income'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/categories.png'),
                    ),
                    Text('Expense by Categories'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/report.png'),
                    ),
                    Text('Monthly Report'),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/saving.png'),
                    ),
                    Text('Savings'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      child: Image.asset('images/wishlist.png'),
                    ),
                    Text('Wishlist'),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
// Container(
//   decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(20),
//     color: Colors.blueGrey,
//   ),
//   width: 150,
//   height: 150,
// ),
