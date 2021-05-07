import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Forms Flutter',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FormCode(),
    );
  }
}

class FormCode extends StatefulWidget {
  @override
  _FormCodeState createState() => _FormCodeState();
}

class _FormCodeState extends State<FormCode> {
  final GlobalKey<FormState> _formKey = new GlobalKey();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  bool _autoValidate = false;

  FormUser _formUser = FormUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Title"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: _save,
      ),
      body: Form(
        key: _formKey,
        autovalidate: _autoValidate,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  return value.isEmpty ? "Can't be empty" : null;
                },
                onSaved: (value) {
                  setState(() {
                    _formUser.name = value;
                  });
                },
                decoration: InputDecoration(labelText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Can't be empty";
                  } else if (!value.contains("@") && !value.contains(".")) {
                    // of course this isn't the correct way of checking an email
                    // but for the sake of simplicity we'll use this
                    // the correct way would be to use a regex
                    return "That isn't an email";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    _formUser.email = value;
                  });
                },
                decoration: InputDecoration(labelText: "Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: FormField<String>(
                onSaved: (value) {
                  setState(() {
                    _formUser.petType = value;
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return "Please select a pet";
                  } else if (value == "Dog") {
                    return "We Don't want dogs at our party";
                  }
                  return null;
                },
                builder: (FormFieldState state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        "Select Pet",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            color: state.hasError ? Colors.red : null),
                      ),
                      Visibility(
                        visible: state.hasError,
                        child: Text(
                          state.errorText ?? "",
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      RadioListTile<String>(
                        title: Text("Cat"),
                        groupValue: state.value,
                        value: "Cat",
                        onChanged: (value) {
                          setState(() {
                            state.didChange(value);
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: Text("Dog"),
                        groupValue: state.value,
                        value: "Dog",
                        onChanged: (value) {
                          state.didChange(value);
                        },
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void _save() {
    // start auto validating the entire form
    setState(() {
      _autoValidate = true;
    });

    // tell the form to validate the fields inside
    // and return true if everything is valid
    if (_formKey.currentState.validate()) {
      // the form is valid and you can proceed to do what you need to do

      // the onSaved method inside all the fields of the form are called when
      // we call _formKey.currentState.save()
      _formKey.currentState.save();

      _scaffoldKey.currentState.showSnackBar(
        new SnackBar(
          content: Text("Everthing checks out and the form is now saved"),
        ),
      );
    } else {
      // one of the fields is wrong, you can either display a message to the
      // user or rely on the form field to notify the user I prefer a SnackBar

      _scaffoldKey.currentState.showSnackBar(
        new SnackBar(
          content: Text("Please check the from"),
        ),
      );
    }
  }
}

// this class will hold the form data
class FormUser {
  String name;
  String email;
  String petType;
}