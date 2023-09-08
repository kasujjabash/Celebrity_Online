import 'package:celebrity_online/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final Color myColor2 = const Color(0xFFC474A6);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: myColor2,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
          const  Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _emailController,

                decoration: InputDecoration(
                  hintText: 'Email address',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                controller: _passwordController,

                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),


            SizedBox(width: 150,
              child: ElevatedButton(
                onPressed: () async {

                //This is the logic for the Login button.
                final supabase = Supabase.instance.client;
                final email = _emailController.text.trim();
                final password = _passwordController.text.trim();

                final response = await SupabaseClient.auth.signIn(
                  email: email,
                  password: password,
                );
                // final user = response.data?.user;
                // final error = response.error;
                if(response != null){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => ProfilePage()));
                }
                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Logining in faild'),
                    backgroundColor: Colors.red,
                    ));
                }
              },
                child: const Text('Login'),
              ),
              
            ),
            TextButton(
              onPressed: () {},
             child: const Text('Forgot Password'),)
          ],
        ),
      ),
    );
  }
}