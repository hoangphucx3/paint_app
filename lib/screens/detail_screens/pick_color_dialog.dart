import 'package:flutter/material.dart';

import '../../constants.dart';

class PickColorDialog extends StatelessWidget {
  const PickColorDialog({Key? key}) : super(key: key);

  customDialog(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: List.generate(
              20,
              (index) => PickColorCard(
                press: () {
                  Navigator.pop(context, index);
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return customDialog(context);
  }
}

class PickColorCard extends StatelessWidget {
  const PickColorCard({Key? key, required this.press}) : super(key: key);

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.only(top: 10, bottom: 15, left: 0, right: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(
              color: mSecondColor,
              width: 1,
            ),
          ),
        ),
        child: Row(
          children: [
            const Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'TimeLess Off-Whites',
                    style: TextStyle(
                        color: mPrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            Container(
              width: 23,
              height: 23,
              color: Colors.red,
            ),
            Container(
              width: 23,
              height: 23,
              color: Colors.green,
            ),
            Container(
              width: 23,
              height: 23,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
