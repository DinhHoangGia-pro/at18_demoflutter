import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  State<MyStatefulWidget> createState() => MyState1();
}

class MyState1 extends State<MyStatefulWidget> {
  int diem = 0;

  @override
  void initState() {
    super.initState();
  }

  TextEditingController txt1_controller = TextEditingController();

  void ChangeState() {
    int a = int.parse(txt1_controller.text.toString());

    setState(() {
      diem = a;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFE306),
      child: Column(
        children: [
          TextField(
            controller: txt1_controller,
            decoration: InputDecoration(hintText: "Nhập điểm"),
            onChanged: (value) => ChangeState(),
          ),
          (diem > 7)
              ? Image.network(
                  "https://cdn.thuvienphapluat.vn/phap-luat/2022/KhanhHuyen/20-7-1.jpg")
              : Image.network(
                  "https://suckhoedoisong.qltns.mediacdn.vn/thumb_w/640/324455921873985536/2021/12/13/mac-cam-ngoai-hinh-1-16393660841352103929406.jpg")
        ],
      ),
    );
  }
}
