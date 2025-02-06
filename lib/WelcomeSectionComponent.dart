import 'package:flutter/material.dart';

class WelcomeSectionComponent extends StatelessWidget {
  final String welcomeText;
  final String loginPrompt;
  final String insightsText;
  final String imageUrl;
  final String frameUrl;

  const WelcomeSectionComponent({
    Key? key,
    this.welcomeText = 'Welcome Back!',
    this.loginPrompt = 'Login with your pin',
    this.insightsText = 'Real-time Insights with our online back-office',
    this.imageUrl = 'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/image-14.png',
    this.frameUrl = 'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/frame-42.png',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          constraints: BoxConstraints(minWidth: 300),
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF294BEE), Color(0xFF685EF4)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                welcomeText,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEEF5FF),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 8),
              Text(
                loginPrompt,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFFEEF5FF),
                  fontFamily: 'Lato',
                  height: 1.5,
                ),
              ),
              SizedBox(height: 20),
              Text(
                insightsText,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFEEF5FF),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.network(
                  imageUrl,
                  width: constraints.maxWidth * 0.8,
                  height: constraints.maxHeight * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Image.network(
                  frameUrl,
                  width: 22,
                  height: 6,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

