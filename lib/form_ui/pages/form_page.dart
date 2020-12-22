import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gsg_flutter_2/form_ui/widgets/custom_textField.dart';
import 'package:logger/logger.dart';
import 'package:string_validator/string_validator.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  ///1 - create global key for the form
  ///2- write form widget and assign the defined key to it
  ///3- write the textFormField inside form
  ///4- define the validator and save functions inside textFormField
  ///5- excute save and validate functions using key

  GlobalKey<FormState> formKey = GlobalKey();

  Logger logger = Logger();

  String email;

  String password;

  saveForm() {
    if (isAccepted) {
      bool validateResult = formKey.currentState.validate();
      if (validateResult) {
        formKey.currentState.save();
        logger.d('user nama is $email, and password is $password');
      } else {
        return;
      }
    } else {
      logger.d('you have to accept out terms');
    }
  }

  saveEmail(String value) {
    this.email = value;
  }

  savePassword(String value) {
    this.password = value;
  }

  String validateEmail(String value) {
    if (value == null || value == '') {
      return 'required field';
    } else if (!isEmail(value)) {
      return 'Incorrect Email Syntax';
    }
  }

  String validatePassword(String value) {
    if (value == null || value == '') {
      return 'required field';
    } else if (value.length < 6) {
      return 'password must be longer than 6 symbols';
    }
  }

  int groupValue;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: RadioListTile(
                    title: Text('Market'),
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      this.groupValue = value;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile(
                    title: Text('Customer'),
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (value) {
                      this.groupValue = value;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    //sasdasdas@casasdasd.dsdasd
                    CustomTextField(
                      label: 'Email',
                      saveFunction: saveEmail,
                      validateFun: validateEmail,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      label: 'Password',
                      saveFunction: savePassword,
                      validateFun: validatePassword,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CheckboxListTile(
                      title: Text('Accept All Terms And Conditions'),
                      value: isAccepted,
                      onChanged: (value) {
                        setState(() {
                          this.isAccepted = value;
                        });
                      },
                    ),
                    RaisedButton(
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Text('Submit'),
                        onPressed: () {
                          saveForm();
                        })
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
