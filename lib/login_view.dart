import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'test@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.email),
            ),
          ),
          TextFormField(
            controller: pwdController,
            obscureText: true,
            decoration: InputDecoration(
              label: Text("Password"),

              hintText: 'Password must be 6 or more characters.',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
            ),
          ),
          TextFormField(
            controller: pwdController,
            // keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly
            ],
            decoration: InputDecoration(
              label: Text("Phone Number"),
              hintText: '',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                return;
                if (emailController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Email cannot be empty.")));
                  return;
                }
                if (pwdController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Password cannot be empty.")));
                  return;
                }
                if (pwdController.text.length < 6) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Password must be 6 or more characters.")));
                  return;
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
