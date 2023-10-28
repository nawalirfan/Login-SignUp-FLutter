import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  bool _isPasswordVisible = false;
  bool _isPassword2Visible = false;
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  void _togglePassword2Visibility() {
    setState(() {
      _isPassword2Visible = !_isPassword2Visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _isDarkMode
            ? const Color(0xFF53545A)
            : const Color.fromARGB(255, 248, 248, 250),
        body: SingleChildScrollView(
            child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                  _isDarkMode ? 'assets/asset3-dark.jpg' : 'assets/asset3.jpg'),
              Container(
                padding: const EdgeInsets.only(
                    top: 5.0, bottom: 5.0, right: 40.0, left: 40.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            color: _isDarkMode
                                ? const Color.fromARGB(255, 187, 157, 216)
                                : const Color.fromARGB(255, 163, 115, 207),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _toggleTheme();
                          },
                          child: Text(
                            _isDarkMode ? 'Light mode?' : 'Dark mode?',
                            style: TextStyle(
                              color: _isDarkMode
                                  ? const Color.fromARGB(255, 187, 157, 216)
                                  : const Color.fromARGB(255, 163, 115, 207),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    TextFormField(
                      style: TextStyle(
                          color: _isDarkMode
                              ? const Color.fromARGB(255, 218, 210, 224)
                              : const Color.fromARGB(255, 45, 45, 46)),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            color: _isDarkMode
                                ? const Color.fromARGB(255, 187, 157, 216)
                                : const Color.fromARGB(255, 163, 115, 207)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: _isDarkMode
                                  ? const Color.fromARGB(255, 187, 157, 216)
                                  : const Color.fromARGB(255, 163, 115, 207),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: _isDarkMode
                                  ? const Color.fromARGB(255, 187, 157, 216)
                                  : const Color.fromARGB(255, 163, 115, 207),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 189, 47, 37),
                              width: 1.5),
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value!.length > 10) {
                          return 'Email is too long';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                                color: _isDarkMode
                                    ? const Color.fromARGB(255, 218, 210, 224)
                                    : const Color.fromARGB(255, 45, 45, 46)),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: _isDarkMode
                                      ? const Color.fromARGB(255, 187, 157, 216)
                                      : const Color.fromARGB(
                                          255, 163, 115, 207)),
                              suffixIcon: GestureDetector(
                                onTap: _togglePasswordVisibility,
                                child: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: _isDarkMode
                                        ? const Color.fromARGB(
                                            255, 187, 157, 216)
                                        : const Color.fromARGB(
                                            255, 163, 115, 207),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: _isDarkMode
                                        ? const Color.fromARGB(
                                            255, 187, 157, 216)
                                        : const Color.fromARGB(
                                            255, 163, 115, 207),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 189, 47, 37),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.length > 10) {
                                return 'Email is too long';
                              }
                              return null;
                            },
                            obscureText: _isPasswordVisible,
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                                color: _isDarkMode
                                    ? const Color.fromARGB(255, 218, 210, 224)
                                    : const Color.fromARGB(255, 45, 45, 46)),
                            decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                  color: _isDarkMode
                                      ? const Color.fromARGB(255, 187, 157, 216)
                                      : const Color.fromARGB(
                                          255, 163, 115, 207)),
                              suffixIcon: GestureDetector(
                                onTap: _togglePassword2Visibility,
                                child: Icon(
                                  _isPassword2Visible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: _isDarkMode
                                        ? const Color.fromARGB(
                                            255, 187, 157, 216)
                                        : const Color.fromARGB(
                                            255, 163, 115, 207),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: _isDarkMode
                                        ? const Color.fromARGB(
                                            255, 187, 157, 216)
                                        : const Color.fromARGB(
                                            255, 163, 115, 207),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 189, 47, 37),
                                    width: 1.5),
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.length > 10) {
                                return 'Email is too long';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  _isDarkMode
                                      ? const Color.fromARGB(255, 187, 157, 216)
                                      : const Color.fromARGB(
                                          255, 163, 115, 207)),
                              foregroundColor: MaterialStateProperty.all(
                                  _isDarkMode
                                      ? const Color.fromARGB(255, 46, 45, 46)
                                      : const Color.fromARGB(
                                          255, 238, 230, 245)),
                            ),
                            child: const Text(
                              'Create Account',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print('account created');
                              }
                            },
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text('Have an account?',
                            style: TextStyle(
                              color: _isDarkMode
                                  ? const Color.fromARGB(255, 187, 157, 216)
                                  : const Color.fromARGB(255, 163, 115, 207),
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/login');
                          },
                          child: Text(' Log In',
                              style: TextStyle(
                                color: _isDarkMode
                                    ? const Color.fromARGB(255, 187, 157, 216)
                                    : const Color.fromARGB(255, 163, 115, 207),
                                fontWeight: FontWeight.bold,
                              )),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
