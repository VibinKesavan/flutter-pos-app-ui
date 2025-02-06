import 'dart:ffi';

import 'package:flutter/material.dart';
import 'HeaderComponent.dart';
import 'LoginFormComponent.dart';
import 'WelcomeSectionComponent.dart';
import 'FooterComponent.dart';
import 'package:window_manager/window_manager.dart';

void main() {
  runApp(MyApp());

  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setTitleBarStyle(TitleBarStyle.hidden);
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Column(
                children: [
                  const HeaderComponent(),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: WelcomeSectionComponent(
                            welcomeText: 'Welcome Back!',
                            loginPrompt: 'Login with your pin',
                            insightsText:
                                'Real-time Insights with our online back-office',
                            imageUrl:
                                'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/image-14.png',
                            frameUrl:
                                'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/frame-42.png',
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: LoginFormComponent(
                            employeePlaceholder: 'Employee',
                            pinPlaceholder: 'Pin Code',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const FooterComponent(
                    version: 'Version: 20240608.1',
                    dateTime: '25 June 08:06 PM',
                    status: 'Not Started',
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
