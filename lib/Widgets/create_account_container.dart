import 'dart:io';

import 'package:flutter/material.dart';
import '../Widgets/text_widget.dart';
import '../utility/app_colors.dart';
import '../utility/app_assets.dart';
import '../utility/app_strings.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountContainer extends StatefulWidget {
  const CreateAccountContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateAccountContainer> createState() => _CreateAccountContainerState();
}

class _CreateAccountContainerState extends State<CreateAccountContainer> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          const SizedBox(
            height: 26,
          ),
          TextWidget(
            text: AppStrings.createAcntTxt,
            color: AppColors.txtColorBlck,
            size: 24,
            weight: FontWeight.w600,
          ),
          const SizedBox(
            height: 7,
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context, builder: modelBottemsheet);
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: _image ==null ? Image.asset(
                    AppAssets.ellipse,
                    fit: BoxFit.cover,
                  ) : Image.file(_image!)),
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          TextWidget(
            text: AppStrings.slctAvatarTxt,
            color: AppColors.txtColorBlck,
            size: 16,
          ),
        ],
      ),
    );
  }

  Widget modelBottemsheet(BuildContext context) {
    return SizedBox(
      height: 160,
      width: double.infinity,
     // child: 
      //Padding(
       // padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextWidget(
                text: 'Select option',
                size: 18,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  _pickImg(ImageSource.camera);
                },
                child: TextWidget(
                  text: 'Camera',
                  color: AppColors.txtFldBrdrClrGreen,
                  size: 14,
                )),
               const SizedBox(height: 2,),
               TextButton(onPressed: (){
                _pickImg(ImageSource.gallery);
               }, child: TextWidget(text: 'Gallery',
               color: AppColors.txtFldBrdrClrGreen,
               size: 14,))
          ],
        ),
      );
   // );
  }

  void _pickImg(ImageSource source)async{
    final _imgGetter= await _picker.pickImage(source: source);
    if(_imgGetter==null) return;
    setState(() {
      _image=File(_imgGetter.path);
    });
  }
}
