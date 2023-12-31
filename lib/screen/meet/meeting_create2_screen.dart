import 'package:dating/Widget/bottom_apply_bar.dart';
import 'package:dating/Widget/meet/meet_create2/Room_explain.dart';
import 'package:dating/Widget/meet/meet_create2/invite_friends.dart';
import 'package:dating/Widget/meet/meet_create2/location_select.dart';
import 'package:dating/Widget/meet/meet_create2/room_photo_upload.dart';
import 'package:dating/Widget/meet/meet_create2/room_title.dart';
import 'package:dating/Widget/meet/meet_create2/set_num_female.dart';
import 'package:dating/Widget/meet/meet_create2/set_num_male.dart';
import 'package:dating/screen/meet/meeting_screen.dart';
import 'package:dating/style/constant.dart';
import 'package:dating/style/icon_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeetingCreate2Screen extends StatefulWidget {
  const MeetingCreate2Screen({super.key});

  @override
  State<MeetingCreate2Screen> createState() => _MeetingCreate2ScreenState();
}

class _MeetingCreate2ScreenState extends State<MeetingCreate2Screen> {
  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: IconShape.iconArrowBack,
            onPressed: () {
              Get.back();
            },
          ),
        ),
        title: const Text(
          '방 설정',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: fontColor),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // meeting room photo upload
              Text(
                '과팅방 사진',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RoomPhotoUpload(),
              SizedBox(height: 20),

              // meeting room title
              Text(
                '방 제목',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RoomTitle(),
              SizedBox(height: 20),

              // meeting room explain
              Text(
                '방 설명',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RoomExplain(),
              SizedBox(height: 20),

              // location select
              LocationSelect(),
              SizedBox(height: 20),

              // set number of people
              Text(
                '남/여 인원 설정',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SetNumMale(),
                  SizedBox(width: 10),
                  SetNumFemale(),
                ],
              ),
              SizedBox(height: 20),

              // invite friends
              Text(
                '초대하기',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              InviteFriends(),
            ],
          ),
        ),
      ),

      // settings complete button
      bottomNavigationBar: BottomApplyBar(
        heightPoint: 0.06,
        text: '확인',
        onTap: () {
          Get.to(const MeetingScreen());
        },
      ),
    );
  }
}
