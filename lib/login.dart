import 'package:flutter/material.dart';

import 'data.dart';
import 'root.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorMessage = '';
  bool _isError = false;

  static const String _logoUrl =
      'https://play-lh.googleusercontent.com/bB_cyOTbQfFmV4IaeqTIFJVc1Wm4UdQwQai8GjthG4uaXrTHNZTKsMtg9_9058GeZGLgoJzIasYYdFkSvdyQ';

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text;

    // 1. Validasi input kosong
    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _isError = true;
        _errorMessage = 'Username dan password tidak boleh kosong';
      });
      return;
    }

    // 2. Cocokkan dengan akun di data.dart
    if (username == account.username && password == account.password) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Root(username: username)),
      );
    } else {
      setState(() {
        _isError = true;
        _errorMessage = 'Username atau password salah';
      });
    }
  }

  InputDecoration _fieldDecoration(String hint) {
    final outline = Theme.of(context).colorScheme.outline;

    OutlineInputBorder border(Color color) => OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(color: color),
        );

    return InputDecoration(
      hintText: hint,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      enabledBorder: border(_isError ? Colors.red : outline),
      focusedBorder: border(_isError ? Colors.red : Colors.blue),
    );
  }

  Widget _logoFallback() {
    return Container(
      width: 120,
      height: 120,
      color: Colors.red,
      alignment: Alignment.center,
      child: const Text(
        'UNI\nQLO',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1.1,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo dari URL
                Image.network(
                  _logoUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    return _logoFallback();
                  },
                  errorBuilder: (context, error, stackTrace) => _logoFallback(),
                ),
                const SizedBox(height: 16),

                const Text(
                  'Selamat Datang di Uniqlo\nSelamat Berbelanja',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 24),

                // Username
                TextField(
                  controller: _usernameController,
                  style: const TextStyle(fontSize: 14),
                  decoration: _fieldDecoration('username'),
                ),
                const SizedBox(height: 16),

                // Password (tersembunyi)
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: const TextStyle(fontSize: 14),
                  decoration: _fieldDecoration('password'),
                ),

                // Pesan error
                if (_isError) ...[
                  const SizedBox(height: 8),
                  Text(
                    _errorMessage,
                    style: const TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ],
                const SizedBox(height: 16),

                // Tombol login
                SizedBox(
                  width: 175,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
