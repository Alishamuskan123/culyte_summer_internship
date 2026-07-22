import 'package:flutter/material.dart';

void main() {
  runApp(const MyForm());
}

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationForm(),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  // Form Key
  final _formKey = GlobalKey<FormState>();

  // Controllers
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // Checkbox
  bool agree = false;

  // Switch
  bool notifications = false;

  // Focus Node for KeyboardListener
  final FocusNode keyboardFocus = FocusNode();

  String lastKeyPressed = "None";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Widgets "),
        centerTitle: true,
      ),

      body: KeyboardListener(
        focusNode: keyboardFocus,
        autofocus: true,

        onKeyEvent: (event) {
          setState(() {
            lastKeyPressed = event.logicalKey.keyLabel;
          });
        },

        child: Padding(
          padding: EdgeInsets.all(16),

          child: Form(
            key: _formKey,

            child: ListView(
              children: [

                // Name
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: nameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your name";
                    }
                    return null;
                  },
                ),

                 SizedBox(height: 20),

                // Email
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your email";
                    }

                    if (!value.contains("@")) {
                      return "Invalid email";
                    }

                    return null;
                  },
                ),

                 SizedBox(height: 20),

                // Autocomplete
                Autocomplete<String>(
                  optionsBuilder: (TextEditingValue textEditingValue) {
                    if (textEditingValue.text.isEmpty) {
                      return  Iterable<String>.empty();
                    }

                    const countries = [
                      "Pakistan",
                      "India",
                      "China",
                      "Canada",
                      "Australia",
                      "Japan",
                    ];

                    return countries.where(
                      (country) => country
                          .toLowerCase()
                          .startsWith(textEditingValue.text.toLowerCase()),
                    );
                  },

                  fieldViewBuilder:
                      (context, controller, focusNode, onEditingComplete) {
                    return TextFormField(
                      controller: controller,
                      focusNode: focusNode,
                      decoration:  InputDecoration(
                        labelText: "Country",
                        border: OutlineInputBorder(),
                      ),
                    );
                  },
                ),

                 SizedBox(height: 20),

                // Checkbox
                CheckboxListTile(
                  title: Text("I agree to the Terms & Conditions"),
                  value: agree,
                  onChanged: (value) {
                    setState(() {
                      agree = value!;
                    });
                  },
                ),

                // Switch
                SwitchListTile(
                  title: Text("Enable Notifications"),
                  value: notifications,
                  onChanged: (value) {
                    setState(() {
                      notifications = value;
                    });
                  },
                ),

                 SizedBox(height: 20),

                Text(
                  "Last Key Pressed: $lastKeyPressed",
                  style:  TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                 SizedBox(height: 30),

                ElevatedButton(
                  onPressed: () {

                    if (_formKey.currentState!.validate()) {

                      if (!agree) {
                        ScaffoldMessenger.of(context).showSnackBar(
                           SnackBar(
                            content: Text(
                                "Please accept the Terms & Conditions"),
                          ),
                        );
                        return;
                      }

                      ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(
                          content: Text("Form Submitted Successfully!"),
                        ),
                      );
                    }
                  },

                  child:  Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}