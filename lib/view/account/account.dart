import 'package:elegant_threads/style/color.dart';
import 'package:elegant_threads/style/font_style.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  GlobalKey<FormState> formKey = GlobalKey();

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    var sizeof = MediaQuery.of(context);
    return  Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_circle_left_outlined),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Complete Your Profile",
                    style: heading(25),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Worry ony you can see your personal ",
                    style: normalstyle(15),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "data. No one else will be able to see it ",
                    style: normalstyle(15),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 65,
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_a_photo,
                        ),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Name")],
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                         
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0)),
                        )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text("Gender")],
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          labelText: 'Gender',
                       
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0)),
                        )
                          // suffixIcon: Icon(Icons.arrow_drop_down),
                        ),
                        items: <String>['Male', 'Female'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          // Handle selection here
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Phone number",
                            style: normalstyle(15),
                          )
                        ],
                      ),
                      IntlPhoneField(
                        focusNode: focusNode,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                         
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25.0)),
                        )
                        ),
                        languageCode: "en",
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        onCountryChanged: (country) {
                          print('Country changed to: ' + country.name);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(brown),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    minimumSize: MaterialStateProperty.all(
                      Size(sizeof.size.height * 0.52, sizeof.size.width * 0.14),
                    ),
                  ),
                  child: Text(
                    "Complete Profile",
                    style: buttonStyle(20),
                  ),
                ),
              )
            ],
          ),
        ),
      
    );
  }
}
