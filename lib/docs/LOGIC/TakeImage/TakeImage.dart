import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:my_documentation/docs/LOGIC/HttpService.dart';
import 'package:my_documentation/docs/LOGIC/TakeImage/image_picker_handler.dart';

class TakeImage extends StatefulWidget {
  const TakeImage({Key? key, this.data}) : super(key: key);
  final dynamic data;

  @override
  State<TakeImage> createState() => _TakeImageState();
}

class _TakeImageState extends State<TakeImage>
    with ImagePickerListener, TickerProviderStateMixin {
  HttpService http = HttpService();
  String ratingText = 'Choose Rating';
  double? rating;
  TextEditingController reviewController = TextEditingController();

  List<File> photos = [];
  ImagePickerHandler? imagePicker;
  AnimationController? _controller;

  convertImageToBytes() {
    List base64Image = [];
    List fileName = [];

    for (var img in photos) {
      int index = photos.indexOf(img);
      base64Image.add({
        'value': index,
        'image_url': base64Encode(img.readAsBytesSync()),
      });
      fileName.add(img.path.split("/").last);
    }
  }

  showSuccessDialog(msg) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) => Container(
        width: MediaQuery.of(context).size.width * 0.4,
        child: AlertDialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                    ),
                  ),
                ),
                Image.asset(
                  'assets/images/icon/checklist-circle.png',
                  width: 100,
                ),
                SizedBox(height: 12),
                Text(
                  'Thank you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  msg,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 44,
                  width: 154,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Colors.red,
                    ),
                    child: Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ).then(
      (value) => Navigator.pop(context, 'Berhasilll'),
    );
  }

  handleRemovePhoto(index) {
    setState(() {
      photos.removeAt(index);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    imagePicker = new ImagePickerHandler(this, _controller!);
    imagePicker?.init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomAppBar(),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildAddPhotos(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black87),
      backgroundColor: Colors.white,
      elevation: 0.5,
      titleSpacing: 0,
      automaticallyImplyLeading: false,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.chevron_left,
          size: 32,
        ),
      ),
      title: Text(
        'Image Picker Handler',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }

 

  Widget _buildAddPhotos() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(24, 24, 24, 0),
          child: Wrap(
            children: [
              // Add Photos
              Container(
                margin: EdgeInsets.fromLTRB(0, 8, 12, 0),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      imagePicker?.showDialog(context);
                    },
                    child: Center(
                      child: Icon(
                        Icons.add_photo_alternate_outlined,
                        color: Color(0xffB2B2B2),
                        size: 32,
                      ),
                    ),
                  ),
                ),
              ),

              // Added Photos
              for (var i = 0; i < photos.length; i++)
                photos.length < 1
                    ? Container()
                    : Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8, 12, 0),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0xffF7F7F7),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: FileImage(photos[i]),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                            right: 16,
                            top: 12,
                            child: GestureDetector(
                              onTap: () {
                                handleRemovePhoto(i);
                              },
                              child: Image.asset(
                                'assets/images/icon/new_design/close-circle.png',
                                width: 28,
                                height: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBottomAppBar() {
    return BottomAppBar(
      child: Container(
        margin: EdgeInsets.fromLTRB(24, 16, 24, 24),
        width: double.infinity,
        height: 48,
        child: TextButton(
          onPressed: () {
            convertImageToBytes();
          },
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Colors.redAccent,
          ),
          child: Text(
            'Convert to bytes',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  userImage(File _image, int type) {
    if (_image != null) {
      setState(() {
        if (type == 1) {
          photos.add(_image);
        }
      });
    }
  }
}
