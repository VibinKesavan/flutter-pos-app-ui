import 'package:flutter/material.dart';

class LoginFormComponent extends StatefulWidget {
  final String employeePlaceholder;
  final String pinPlaceholder;

  LoginFormComponent({
    this.employeePlaceholder = 'Employee',
    this.pinPlaceholder = 'Pin Code',
  });

  @override
  _LoginFormComponentState createState() => _LoginFormComponentState();
}

class _LoginFormComponentState extends State<LoginFormComponent> {
  final TextEditingController employeeController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  void _handleNumberPress(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text += number;
      });
    }
  }

  void _handleBackspace() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          constraints: BoxConstraints(minWidth: 340),
          padding: EdgeInsets.all(24),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo and Title Section
              Image.network(
                'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/main-log.png',
                width: 109,
                height: 32,
              ),
              SizedBox(height: 24),
              Text(
                'Employee Login',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF201E1E),
                  fontFamily: 'Lato',
                ),
              ),
              SizedBox(height: 24),

              // Input Fields Section
              TextField(
                controller: employeeController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                  labelText: widget.employeePlaceholder,
                  labelStyle: TextStyle(
                    color: Color(0xFF8F8F8F),
                    fontSize: 14,
                    fontFamily: 'Lato',
                  ),
                  prefixIcon: Image.network(
                      'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/icons.png',
                      width: 20,
                      height: 20),
                  suffixIcon: Image.network(
                      'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/icons-2.png',
                      width: 20,
                      height: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                  ),
                ),
              ),
              SizedBox(height: 24),
              TextField(
                controller: pinController,
                readOnly: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF9F9F9),
                  labelText: widget.pinPlaceholder,
                  labelStyle: TextStyle(
                    color: Color(0xFF8F8F8F),
                    fontSize: 14,
                    fontFamily: 'Lato',
                  ),
                  prefixIcon: Image.network(
                      'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/pin.png',
                      width: 20,
                      height: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Color(0xFFE5E5E5)),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 24),

              // Buttons Section
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle cancel
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF282B30),
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        side: BorderSide(color: Color(0xFFD0D0D0)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SecondScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF294BEE),
                        padding: EdgeInsets.symmetric(vertical: 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Lato',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),

              // Number Pad
              Container(
                width: constraints.maxWidth > 340 ? 340 : constraints.maxWidth,
                child: Column(
                  children: [
                    _buildNumberRow(['1', '2', '3']),
                    SizedBox(height: 2),
                    _buildNumberRow(['4', '5', '6']),
                    SizedBox(height: 2),
                    _buildNumberRow(['7', '8', '9']),
                    SizedBox(height: 2),
                    Row(
                      children: [
                        _buildKeypadButton(
                          child: Image.network(
                              'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/keyboad.png',
                              width: 20,
                              height: 16),
                          color: Color(0xFFD05757),
                          onPressed: _handleBackspace,
                        ),
                        SizedBox(width: 2),
                        _buildKeypadButton(
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Lato',
                            ),
                          ),
                          color: Color(0xFF0B0E12),
                          onPressed: () => _handleNumberPress('0'),
                        ),
                        SizedBox(width: 2),
                        _buildKeypadButton(
                          child: Image.network(
                              'https://dashboard.codeparrot.ai/api/image/Z6TsQKQDH3ZYFIXQ/icon.png',
                              width: 18,
                              height: 16),
                          color: Color(0xFF294BEE),
                          onPressed: () {
                            // Handle enter
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNumberRow(List<String> numbers) {
    return Row(
      children: numbers.map((number) {
        return Expanded(
          child: _buildKeypadButton(
            child: Text(
              number,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontFamily: 'Lato',
              ),
            ),
            color: Color(0xFF0B0E12),
            onPressed: () => _handleNumberPress(number),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildKeypadButton({
    required Widget child,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Expanded(
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 1),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.zero,
          ),
          child: Center(child: child),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
