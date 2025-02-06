import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  const HeaderComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      color: const Color(0xFF0B0E12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 22.18,
            child: Image.network(
              'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/main-log-2.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
            decoration: BoxDecoration(
              color: const Color(0xFFD05757),
              borderRadius: BorderRadius.circular(1),
            ),
            child: const Text(
              'TEST',
              style: TextStyle(
                color: Colors.white,
                fontSize: 7,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
