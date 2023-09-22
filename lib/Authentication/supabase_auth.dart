import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart';

const String supabaseUrl = "https://gbpwrckpjbmbkhyztmkh.supabase.co";
const String token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdicHdyY2twamJtYmtoeXp0bWtoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTM0NjU3MzgsImV4cCI6MjAwOTA0MTczOH0.nPU8_fKLY47lrLH60bac6MEu1J90vuZ3T5G1WCm8Vow";

class SupabaseManager {

  final client = SupabaseClient(supabaseUrl, token);


  Future<void> signUpUser(BuildContext context, {String? email, String? password}) async {
    try {
      final result = await client.auth.signUp(email:email, password: 'password');

      if (result != null) {
        showToastMessage('Registration Success', isError: false);
         Navigator.pushReplacementNamed(context, 'login');
      } else {
        showToastMessage('Error: ${result == null}', isError: true);
      }
    } catch (e) {
      showToastMessage('Error: $e', isError: true);
    }
  }


  Future<void> signInUser(BuildContext context, {String? email, String? password}) async {
    try {
      final result = await client.auth.signInWithPassword(email: email!, password: password!);

      if (result!= null) {
        showToastMessage('Login Success', isError: false);
        Navigator.pushReplacementNamed(context, '/profile');
      } else {
        showToastMessage('Error: ${result==null}', isError: true);
      }
    } catch (e) {
      showToastMessage('Error: $e', isError: true);
    }
  }

  Future<void> logout(BuildContext context) async {
    try {
      await client.auth.signOut();
      // Navigator.pushReplacementNamed(context, 'login');
    } catch (e) {
      showToastMessage('Error: $e', isError: true);
    }
  }
}

void showToastMessage(String message, {bool isError = false}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    timeInSecForIosWeb: 1,
    backgroundColor: isError ? Colors.red : Colors.green,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
