import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardNotif extends StatefulWidget {
  String img;
  String notif;

  CardNotif(this.notif , this.img);

  @override
  _CardNotifState createState() => _CardNotifState();
}

class _CardNotifState extends State<CardNotif> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: RaisedButton(
        elevation: 10,
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.8),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(100))),
              height: 80,
              margin: EdgeInsets.only(bottom: 3),
              padding: EdgeInsets.only(top: 0, left: 8, right: 8),
              child: SvgPicture.asset(
                widget.img,
                height: 40,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            widget.notif,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
