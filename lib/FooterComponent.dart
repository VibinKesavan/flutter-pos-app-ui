import 'package:flutter/material.dart';

class FooterComponent extends StatelessWidget {
  final String version;
  final String dateTime;
  final String status;

  const FooterComponent({
    Key? key,
    this.version = 'Version: 20240608.1',
    this.dateTime = '25 June 08:06 PM',
    this.status = 'Not Started',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minWidth: 300),
      height: 26,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      color: const Color(0xFF0B0E12),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                version,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                  height: 15 / 12, // lineHeight / fontSize
                ),
              ),
              Text(
                dateTime,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lato',
                  height: 18 / 12, // lineHeight / fontSize
                ),
              ),
              Text(
                status,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Lato',
                  height: 15 / 12, // lineHeight / fontSize
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
