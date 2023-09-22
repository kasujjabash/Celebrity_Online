import 'package:celebrity_online/Authentication/supabase_auth.dart';
import 'package:celebrity_online/pages/signin_page.dart';

import 'package:flutter/material.dart';
// import 'package:celebrity_online/pages/signin_page.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:celebrity_online/model/user.dart'; 
class SignUp extends StatefulWidget {
  const SignUp({super.key});
 
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final Color myColor2 = const Color(0xFFC474A6);
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
final _supabaseClient = SupabaseManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: myColor2,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Create An Account',
                  style: TextStyle(
                    fontSize: 20,
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
                child:TextFormField(
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
        
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
        
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () async {
                    final password = _passwordController.text;
                    final confirmPassword = _confirmPasswordController.text;
                  
                    if (_formKey.currentState!.validate()) {
                      _supabaseClient.signUpUser(context,
                          email: _emailController.text,
                          password: _passwordController.text);}

                           Navigator.push(context, MaterialPageRoute(builder: (_) => const LoginScreen()));//Route making navigation

                    if (password != confirmPassword) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Passwords don't match"),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }
        // creating anew record in supabase.
                    // final user = User(id: 1, email: email, password: password);
        
                    // final response = await supabase
                    //     .from('User')
                    //     .upsert([
                    //       {
                    //         'id': user.id,
                    //         'email': user.email,
                    //         'password': user.password,
                    //       },
                    //     ]);
        
                    // if (response != null) {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (_) => const LoginScreen()),
                    //   );
                    // } else {
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     const SnackBar(
                    //       content: Text('Creating Account failed'),
                    //       backgroundColor: Colors.red,
                    //     ),
                    //   );
                    // }
                  },
                  
                  child: const Text('Create account'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}