import 'package:flutter/material.dart';

class ChangeNameModal extends StatelessWidget {
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
              'Change Name',
              style: TextStyle(
                color: Color(0xFF343434),
                fontSize: 20,
                fontFamily: 'SF Pro',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'First Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 128,
                      height: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, // Removes the underline
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 9), // Adjusts padding for vertical alignment
                          hintText: 'Enter text', // Placeholder text
                          hintStyle: TextStyle(
                            fontSize: 12, // Font size for hint
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12, // Font size for input text
                          fontFamily: 'SF Pro',
                        ),
                        cursorColor: Colors.black, // Sets the cursor color if needed
                      ),
                    ),

                  ],
                ),
                const SizedBox(width: 7), // Space between the two columns (First Name and Last Name
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Last Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      width: 128,
                      height: 24,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F2F2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, // Removes the underline
                          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 9), // Adjusts padding for vertical alignment
                          hintText: 'Enter text', // Placeholder text
                          hintStyle: TextStyle(
                            fontSize: 12, // Font size for hint
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 12, // Font size for input text
                          fontFamily: 'SF Pro',
                        ),
                        cursorColor: Colors.black, // Sets the cursor color if needed
                      ),
                    ),
                  ],
                ),
              ],
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

