import 'package:flutter/material.dart';
import 'package:quick_mart/core/functions/navigation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            customReplacementNavigate(context, 'signIn');
            Supabase.instance.client.auth.signOut();
          },
          child: Text('Log out'),
        ),
      ),
    );
  }
}
