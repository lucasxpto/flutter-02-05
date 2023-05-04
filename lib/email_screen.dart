import 'navbar.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class ValidarEmailScreen extends StatefulWidget {
  const ValidarEmailScreen({Key? key}) : super(key: key);

  @override
  State<ValidarEmailScreen> createState() => _ValidarEmailScreenState();
}

class _ValidarEmailScreenState extends State<ValidarEmailScreen> {
  TextEditingController controladorEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Informe um email válido',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                    controller: controladorEmail,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      return showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  controladorEmail.text.isEmpty
                                      ? 'Informe um email'
                                      :
                                  EmailValidator.validate(controladorEmail.text)
                                      ? 'Email válido'
                                      : 'Email inválido',
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(controladorEmail.text),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Text('Validar Email'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
