import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: RegistrationForm()));
}

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();

  String fullName = '';
  String email = '';
  String gender = 'ปกติ';
  String province = 'ในเมือง';
  bool acceptTerms = false;

  final List<String> provinces = ['ในเมือง', 'ต่างจังหวัด', 'ตIางประเทศ'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("คำนวณค่าจัดส่งสินค้า")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                "คำนวณค่าจัดส่งและกรอกข้อมูล",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),

              // Full Name
              TextFormField(
                decoration: InputDecoration(labelText: "กรอกน้ำหนัก"),
                validator:
                    (value) => value!.isEmpty ? "กรุณากรอกน้ำหนัก" : null,
                onSaved: (value) => fullName = value!,
              ),

              Text(
                "ความเร่งด่วน",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Radio(
                    value: "ปกติ",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("ปกติ"),
                  SizedBox(width: 20),
                  Radio(
                    value: "ด่วน",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("ด่วน"),
                  Radio(
                    value: "ด่วนพิเศษ",
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
                  Text("ด่วนพิเศษ"),
                ],
              ),

              // Province Dropdown
              Text(
                "ส่งที่ไหน",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              DropdownButtonFormField(
                value: province,
                items:
                    provinces.map((String item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    province = value.toString();
                  });
                },
              ),

              SizedBox(height: 20),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  print('ราคา : ?');
                },
                child: const Text('คำนวณ'),
              ),

              SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && acceptTerms) {
                    _formKey.currentState!.save();
                    print(
                      "Name: $fullName, Email: $email, Gender: $gender, Province: $province",
                    );
                  }
                },
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
