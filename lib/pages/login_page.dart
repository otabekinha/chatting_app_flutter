import 'package:flutter/material.dart';
import 'package:roll_dice/components/my_button.dart';
import 'package:roll_dice/components/my_textField.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  LoginPage({super.key});

  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.network(
              'https://images.unsplash.com/photo-1565120130276-dfbd9a7a3ad7?q=80&w=2370&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height *
                  0.4, // Adjust height as needed
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              color: const Color.fromARGB(255, 209, 56, 45),
                              padding: EdgeInsets.all(3),
                              child: Text(
                                'Join',
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.background,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                            Text(
                              'ChatAway',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.background,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Start chatting with friends and family!',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Login into your account',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      MyTextField(
                        hintText: 'Email',
                        obsecureText: false,
                        controller: _emailController,
                      ),
                      const SizedBox(height: 10),
                      MyTextField(
                        hintText: 'Password',
                        obsecureText: true,
                        controller: _passwordController,
                      ),
                      const SizedBox(height: 30),
                      MyButton(
                        text: 'Login',
                        onTap: login,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have account?',
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.tertiary,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'CREATE NEW ACCOUNT',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
