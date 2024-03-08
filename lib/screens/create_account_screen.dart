import 'package:flutter/material.dart';
import 'package:mcs/widgets/navigation_bar.dart';
import 'package:mcs/widgets/text_form_field.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  // late TextEditingController firstNameC, lastNameC, emailC, passwordC, confirmPassC;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String firstName, lastName, email, password, mobile;
  bool passHidden = true;
  bool confirmPassHidden = true;

  // int selectedIndex = 3;

  String? defaultValidator(String? text, String value) {
    if (text == null || text.isEmpty) {
      return 'Please provide a value';
    }
    if (text.trim().isEmpty) {
      return 'Only Whitespaces are not accepted';
    }
    value = text;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('Create Account'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
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
                          'My Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Please provide a value';
                            }
                            if (text.trim().isEmpty) {
                              return 'Only Whitespaces are not accepted';
                            }
                            firstName = text;
                            return null;
                          },
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'First name',
                            // label: Text(
                            //   'Email address',
                            //   style: const TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                        TextFormFieldWidget(
                            validator: (text) {
                              return defaultValidator(text, firstName);
                            },
                            hintText: 'First name'),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Last name',
                            // label: Text(
                            //   'Email address',
                            //   style: const TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Email address',
                            // label: Text(
                            //   'Email address',
                            //   style: const TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        const Text(
                          'Password - minimum 8 characters, should be a combination of (letters and numbers)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          obscureText: passHidden,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
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
                              // label: const Text(
                              //   'Password',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              hintText: 'Password'),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          obscureText: confirmPassHidden,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    confirmPassHidden = !confirmPassHidden;
                                  });
                                },
                                icon: (confirmPassHidden)
                                    ? const Icon(Icons.visibility_off)
                                    : const Icon(Icons.visibility),
                              ),
                              // label: const Text(
                              //   'Password',
                              //   style: TextStyle(
                              //     fontWeight: FontWeight.bold,
                              //   ),
                              // ),
                              hintText: 'Confirm password'),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Telephone',
                            prefixText: '(+92) ',
                            // prefixStyle: TextStyle(
                            //   color: Colors.black,
                            //   fontWeight: FontWeight.bold,
                            //   fontSize: 16,
                            // ),310
                            // label: Text(
                            //   'Email address',
                            //   style: const TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Delievery Address',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(height: 20.0),
                        TextFormField(
                          validator: (text) {
                            if (text == null || text.isEmpty) {
                              return 'Please provide a value';
                            }
                            if (text.trim().isEmpty) {
                              return 'Only Whitespaces are not accepted';
                            }
                            firstName = text;
                            return null;
                          },
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Address 1',
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'Address 2',
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            hintText: 'City',
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'Postal Code',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: ((context) {
                              return AlertDialog(
                                title: const Text('Success'),
                                // contentPadding: EdgeInsets.all(16),
                                content: const Text(
                                    'Account Created! Your information has been saved.'),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Okay'))
                                ],
                              );
                            }));
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
          )),
      bottomNavigationBar: BNavigationBarWidget(
        changeIndex: (index) {
          // Just to provide some value
          // setState(() {
          //   selectedIndex = index;
          // });
          if (index != 3) {
            Navigator.pop(context, index);
          }
          // print(index);
        },
        currentIndex: 3,
      ),
    );
  }
}
