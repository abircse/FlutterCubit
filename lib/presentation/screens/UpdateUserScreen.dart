import 'package:flutter/material.dart';

class UpdateUserScreen extends StatefulWidget {
  const UpdateUserScreen({super.key});

  @override
  State<UpdateUserScreen> createState() => _UpdateUserScreenState();
}

class _UpdateUserScreenState extends State<UpdateUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update User'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter Full Name',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  hintText: 'John Doe',
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Enter Job Designation',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                  ),
                  hintText: 'Software Engineer',
                  hintStyle: const TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 15.0),
            InkWell(
              onTap: () {
                // Your tap logic
              },
              borderRadius: BorderRadius.circular(15.0), // Match with Material
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.black,
                ),
                child: Container(
                  width: double.infinity,
                  height: 65.0,
                  alignment: Alignment.center,
                  child: const Text(
                    "Update",
                    style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
