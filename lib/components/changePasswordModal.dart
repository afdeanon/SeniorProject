import 'package:flutter/material.dart';

class ChangePasswordModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      content: SizedBox(
        width: 330,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Change Password',
              style: TextStyle(
                color: Color(0xFF343434),
                fontSize: 20,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),

            Container(
              width: 271,
              height: 200,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Current Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 271,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none, // Removes the default underline border
                            ),
                            filled: true,
                            fillColor: Colors.transparent, // Use transparent color to maintain container color
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Adjusts padding
                            hintText: 'Enter here', // Placeholder text
                            hintStyle: const TextStyle(
                              fontSize: 14, // Font size for hint
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14, // Font size for input text
                            color: Colors.black, // Text color
                          ),
                          cursorColor: Colors.black, // Sets the cursor color if needed
                        ),
                      ),
                  
                    ],
                  ),
                  const SizedBox(height: 12),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'New Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 271,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none, // Removes the default underline border
                            ),
                            filled: true,
                            fillColor: Colors.transparent, // Use transparent color to maintain container color
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Adjusts padding
                            hintText: 'Enter Here', // Placeholder text
                            hintStyle: const TextStyle(
                              fontSize: 14, // Font size for hint
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14, // Font size for input text
                            color: Colors.black, // Text color
                          ),
                          cursorColor: Colors.black, // Sets the cursor color if needed
                        ),
                      ),
                  
                    ],
                  ),
                  const SizedBox(height: 12),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Confirm New Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'SF Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        width: 271,
                        height: 36,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none, // Removes the default underline border
                            ),
                            filled: true,
                            fillColor: Colors.transparent, // Use transparent color to maintain container color
                            contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8), // Adjusts padding
                            hintText: 'Enter Here', // Placeholder text
                            hintStyle: const TextStyle(
                              fontSize: 14, // Font size for hint
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 14, // Font size for input text
                            color: Colors.black, // Text color
                          ),
                          cursorColor: Colors.black, // Sets the cursor color if needed
                        ),
                      ),
                  
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF558CE0), // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 5), // Reduced padding
              ),
              onPressed: () {
                // Add your functionality for what happens when the 'Save' button is clicked
              },
              child: const Text(
                'Save',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

