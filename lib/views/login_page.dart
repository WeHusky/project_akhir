import 'package:flutter/material.dart';
import 'package:project_akhir/services/auth/auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final authService = AuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void login() async{
    final email = _emailController.text;
    final password = _passwordController.text;

    try{
      await authService.signInWithEmailPassword(email, password);
      if (mounted) {
      Navigator.pushReplacementNamed(context, '/home');
    }
    }

    catch(e){
      if(mounted){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Errors: $e")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign In",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Masuk untuk melanjutkan.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 252, 252, 252),
                      labelText: "Email",
                      border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                      )
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 252, 252, 252),
                        labelText: "Password",
                        border: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                      ),
                      child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.w800,
                            fontSize: 15,
                          ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text("Belum punya akun?"),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(" Daftar di sini.", 
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      )
                    ],
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}