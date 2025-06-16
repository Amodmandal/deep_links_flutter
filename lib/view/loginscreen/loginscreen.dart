import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, // Off-white background
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueGrey, // Beige card color
                    boxShadow: [],
                  ),
                  child: Icon(
                    Icons.face_retouching_natural, // Cosmetic-themed icon
                    size: 60,
                    color: Colors.white, // Black icon
                  ),
                ),
                const SizedBox(height: 24),
                // Title
                Text(
                  'Beauty Bliss',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Colors.white, // Dark title color
                    fontFamily:
                        'PlayfairDisplay', // Elegant font (add to pubspec.yaml)
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Sign in to glow up',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Muted text color
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 40),
                // Email Field
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey.withValues(alpha: .8),
                    // Beige input background
                    hintText: 'Email Address',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: Colors.white, // Black icon
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Password Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey.withValues(alpha: .8),
                    // Beige input background
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.white, // Black icon
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.white, // Black icon
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // Sign In Button
                ElevatedButton(
                  onPressed: () {
                    // Get.to(CosmeticDashboardScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    // Black button
                    foregroundColor: Colors.white,
                    // Off-white text
                    minimumSize: const Size(double.infinity, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 16),
                // Forgot Password
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.white, // Muted text color
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Sign Up Prompt
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New to Beauty Bliss? ',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //Get.to(SignUpScreen());
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          // Dark title color for contrast
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
