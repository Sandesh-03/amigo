import 'package:flutter/material.dart';
import '';
import '../functional/image_picker.dart';

class AddProperty extends StatefulWidget {
  const AddProperty({Key? key}) : super(key: key);

  @override
  State<AddProperty> createState() => _AddPropertyState();
}

class _AddPropertyState extends State<AddProperty> {
  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> productData = {
    "p_name": "",
    "p_price": "",
    "phone_number": "",
    "address": ""
  };

  addProduct() {
    _formKey.currentState!.save();
    if (_formKey.currentState!.validate()) {
      print("Form is vaid ");

      print('Data for login $productData');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        title: Text('Add New property'),
      ),
      body: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Property Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Property Name Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['p_name'] = value!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: ' Price'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Property Price Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['p_price'] = value!;
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Phone Number'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone Number  Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['phone_number'] = value!;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(labelText: 'Address'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Address Required';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    productData['address'] = value!;
                  },
                ),
                const SizedBox(
                  height: 30,
                ),

                const ImagePickerScreen(),
                const SizedBox(
                  height: 30,
                ),

                Card(
                  child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.redAccent,
                      child: MaterialButton(
                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: (){
                          setState(() {
                                Navigator.of(context).pop();
                          });
                        },
                        child: const Text(
                          "Submit",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),

                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
