import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(7.5),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7.5),
          boxShadow: const [
            BoxShadow(
                color: Color(0x21000000),
                offset: Offset(
                  4.0,
                  4.0,
                ),
                blurRadius: 4.0),
          ],
        ),
        child: const Center(
          child: Text(
            'Log out',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
