import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override

  State<ImagePicker> createState() => _ImagePickerState();



}

class _ImagePickerState extends State<ImagePicker> {
  var pickedImage;
  var imagePicker;
  @override
  void initState() {
    super.initState();
    //Get the ImagePicker instance
    imagePicker = ImagePicker();
  }


  // pickImage(ImageSource imageType) async {
  //   final ImagePicker _picker = ImagePicker();
  //   try {
  //     final photo = await _picker.pickImage(source: imageType);
  //     if (photo == null) return;
  //     final tempImage = File(photo.path);
  //     setState(() {
  //       this.pickedImage = tempImage;
  //     });
  //
  //     Get.back();
  //   } catch (error) {
  //     print(error);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            width: 100,
            height: 100,
            child: pickedImage != null
                ? Image.file(
              pickedImage!,
              fit: BoxFit.cover,
            )
                : Image.asset('images/default_image.png'),
          ),

    ),
    Expanded(
      child: Container(
        height: 30,
        child: Card(

          color: Colors.red,
          margin: EdgeInsets.zero,
          child:InkWell(
            onTap: (){
            showModalBottomSheet(context: context, builder: ((builder)=> BottomSheet()),);
            },
            child: Text(
             "Add Image",
             textAlign: TextAlign.center,
             style: TextStyle(
                 fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),

                    ),
          ),
        ),
      ),
    ),
      ],
    );
  }
  Widget BottomSheet(){
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin:  const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Select Image'),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    XFile? image =
                    await imagePicker.pickImage(source: ImageSource.camera);
                    setState(() {
                      if (image != null) {
                        pickedImage = File(image.path);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("No image Selected")));
                      }
                    });
                  },
                  child: Text("Capture photo")),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                  onPressed: () async {
                    //ImagePicker.pickImage() method returns XFile instance
                    //that we can use to get the path of the image.
                    XFile? image = await imagePicker.pickImage(
                        source: ImageSource.gallery);
                    setState(() {
                      if (image != null) {
                        pickedImage = File(image.path);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("No image Selected")));
                      }
                    });
                  },
                  child: Text("Open Gallery"))
                     ],
          )
        ],
      ),
    );

  }
}
