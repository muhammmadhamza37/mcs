import 'package:flutter/material.dart';
import 'package:mcs/screens/create_account_screen.dart';

class UserAccountContent extends StatefulWidget {
  const UserAccountContent({
    super.key,
    required this.backToIndex,
  });

  final void Function(int index) backToIndex;

  @override
  State<UserAccountContent> createState() => _UserAccountContentState();
}

class _UserAccountContentState extends State<UserAccountContent> {
  late TextEditingController emailC, passwordC;
  bool passHidden = true;

  @override
  void initState() {
    emailC = TextEditingController();
    passwordC = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // alignment: Alignment.topRight,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Account Login',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(height: 20.0),
                  TextField(
                    controller: emailC,
                    // style: const TextStyle(
                    //   fontWeight: FontWeight.bold,
                    //   letterSpacing: 1,
                    // ),
                    decoration: const InputDecoration(
                        hintText: 'someone@example.com',
                        label: Text(
                          'Email address',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: passwordC,
                    obscureText: passHidden,
                    // style: const TextStyle(
                    //   fontWeight: FontWeight.bold,
                    // ),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              passHidden = !passHidden;
                            });
                          },
                          icon: (passHidden)
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                        label: const Text(
                          'Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        hintText: 'Type your password here'),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 196, 177),
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        shape: const BeveledRectangleBorder()),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextButton(
                      style: TextButton.styleFrom(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 0),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'FORGOTTEN PASSWORD?',
                        // textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 97, 87)),
                      )),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                int? result = await Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const CreateAccountScreen();
                }));
                // print(result);
                if (result != null && result != 3) {
                  widget.backToIndex(result);
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 196, 177),
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  // enabledMouseCursor: MouseCursor.defer,
                  shape: const BeveledRectangleBorder()),
              child: const Text(
                'Create Account',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
