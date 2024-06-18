import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../components/homepage_buttons.dart';

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
              HPButtons(
                  imageLoc: Image.asset('images/expense.png'),
                  buttonTitle: 'Daily Expense'),
              HPButtons(
                  imageLoc: Image.asset('images/income.png'),
                  buttonTitle: 'Income')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HPButtons(
                  imageLoc: Image.asset('images/categories.png'),
                  buttonTitle: 'Expense by Categories'),
              HPButtons(
                  imageLoc: Image.asset('images/report.png'),
                  buttonTitle: 'Monthly Report'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HPButtons(
                  imageLoc: Image.asset('images/saving.png'),
                  buttonTitle: 'Savings'),
              HPButtons(
                  imageLoc: Image.asset('images/wishlist.png'),
                  buttonTitle: 'Wishlist'),
            ],
          )
        ],
      ),
    );
  }
}
