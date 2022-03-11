// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_print, prefer_typing_uninitialized_variables, unnecessary_new, prefer_const_literals_to_create_immutables, unused_import, import_of_legacy_library_into_null_safe, annotate_overrides, unused_element, unused_field, unused_local_variable, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:log_in/core/extension/context_extension.dart';
import 'package:country_state_city_pro/country_state_city_pro.dart';

import 'ConvexClipPath.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownvalue = 'Bireysel Kullanıcı(dropdown)';

  // List of items in our dropdown menu
  var items = [
    'Bireysel Kullanıcı(dropdown)',
    'User',
    'Start-up',
  ];

  late String _myActivity;
  late String _myActivityResult;
  final formKey = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity = '';
    _myActivityResult = '';
  }

  _saveForm() {
    var form = formKey.currentState;
    if (form!.validate()) {
      form.save();
      setState(() {
        _myActivityResult = _myActivity;
      });
    }
  }

  DateTime dateTime = DateTime(2022, 12, 24);
  final dateController = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  bool isChecked = false;
  bool isCheckedd = false;
  bool isCheckeddd = false;
  bool _isObscure = true;
  bool _isObscuree = true;

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  final int _value = 1;
  Widget build(BuildContext context) {
    var dropdownValue;
    return Scaffold(
        appBar: AppBar(
          /** Do something */
          toolbarHeight: context.height * 0.15,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: ClipPath(
            clipper: Customshape(),
            child: Container(
                color: Color(0xFF7D97F2),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_back,
                          size: context.width * 0.05,
                          color: Colors.blue,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(10),
                          primary: Colors.white, // <-- Button color
                          // <-- Splash color
                        ),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Center(
                        child: SizedBox(
                            height: context.height * 0.1,
                            width: context.width * 0.2,
                            child: Image.asset(
                              'assets/kay_t_ol.png',
                            )),
                      ),
                    ],
                  ),
                )),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: context.width,
              height: context.height * 0.45,
              margin: context.paddingsymetricHorizontalvalueW800,
              child: SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(children: [
                  Container(
                    width: 400,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(style: BorderStyle.solid, width: 0.80),
                    ),
                    child: DropdownButton(
                      // Initial Value
                      value: dropdownvalue,
                      hint: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Select Item Type",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: context.height * 0.015),
                  Container(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Ad',
                        counterText: "",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    ),
                  ),
                  SizedBox(height: context.height * 0.015),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Soyad',
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    maxLength: 20,
                    // controller: _locationNameTextController,
                  ),
                  SizedBox(height: context.height * 0.015),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Mail Adresi',
                      counterText: "",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    maxLength: 20,
                    // controller: _locationNameTextController,
                  ),
                  SizedBox(height: context.height * 0.015),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    maxLines: 1,
                    onChanged: (String deger) {
                      if (deger.length > 9) {
                        print(deger);
                      }
                    },
                    onSubmitted: (String deger) {
                      print(deger);
                    },
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            icon: Icon(_isObscure
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        hintText: 'Şifre',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                  SizedBox(height: context.height * 0.015),
                  TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    maxLines: 1,
                    onChanged: (String deger) {
                      if (deger.length > 3) {
                        print(deger);
                      }
                    },
                    onSubmitted: (String deger) {
                      print(deger);
                    },
                    obscureText: _isObscuree,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isObscuree = !_isObscuree;
                              });
                            },
                            icon: Icon(_isObscuree
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        hintText: 'Şifre Tekrar',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                  ),
                  SizedBox(height: context.height * 0.015),
                  TextField(
                    keyboardType: TextInputType.datetime,
                    textInputAction: TextInputAction.next,
                    autofocus: true,
                    maxLines: 1,
                    onChanged: (String deger) {
                      if (deger.length > 3) {
                        print(deger);
                      }
                    },
                    onSubmitted: (String deger) {
                      print(deger);
                    },
                    decoration: InputDecoration(
                      hintText: 'Doğum Tarihi (Takvim)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    readOnly: true,
                    controller: dateController,
                    onTap: () async {
                      var date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      dateController.text = date.toString().substring(0, 10);
                    },
                  ),
                  SizedBox(height: context.height * 0.015),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: context.width,
                          height: context.height * 0.045,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Mail Adresi',
                              counterText: "",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            maxLength: 20,
                            // controller: _locationNameTextController,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
            Container(
              width: context.width,
              margin: EdgeInsets.zero,
              child: Column(children: <Widget>[
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        }),
                    RichText(
                      text: TextSpan(
                          text: 'Kullanıcı şözleşmesini ',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              decoration: TextDecoration.underline)),
                      textScaleFactor: context.width * 0.0025,
                    ),
                    Text(
                      'okudum,ve kabul ediyorum.',
                      textScaleFactor: context.width * 0.0025,
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        value: isCheckedd,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckedd = value!;
                          });
                        }),
                    Text(
                      'Eşleşmelerden haberdar olmak için  bildirimlerin  e-mail',
                      textScaleFactor: context.width * 0.0025,
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '         gönderilmesine izin veriyorum.',
                      textScaleFactor: context.width * 0.0025,
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        checkColor: Colors.white,
                        value: isCheckeddd,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckeddd = value!;
                          });
                        }),
                    RichText(
                      text: TextSpan(
                          text: ' Aydınlatma Metnini ',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              decoration: TextDecoration.underline)),
                      textScaleFactor: context.width * 0.0025,
                    ),
                    Text(
                      'okudum,ve onaylıyorum.',
                      textScaleFactor: context.width * 0.0025,
                    )
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.zero,
                width: context.width * 0.3,
                height: context.height * 0.045,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Kayıt Ol',
                    style: TextStyle(
                        color: Color(0xFFf4756c), fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                )),
            SizedBox(
              height: context.height * 0.015,
            ),
            Container(
                height: context.height * 0.15,
                width: context.width * 0.5,
                margin: context.paddingsymetricHorizontalvalueW900,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: const <Widget>[
                        Expanded(child: Divider()),
                        Text(" YA DA "),
                        Expanded(child: Divider()),
                      ]),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Image.asset('assets/linkedin.png'),
                              iconSize: 30,
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: context.width * 0.03,
                            ),
                            IconButton(
                              icon: Image.asset('assets/google.png'),
                              iconSize: 30,
                              onPressed: () {},
                            ),
                          ]),
                      Expanded(child: Image.asset('assets/yazı.png'))
                    ]))
          ]),
        ));
  }
}
