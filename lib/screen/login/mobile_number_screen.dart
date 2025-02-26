import 'package:fitness4all/common/color_extensions.dart';
import 'package:fitness4all/common_widgets/round_button.dart';
import 'package:fitness4all/common_widgets/round_text_field.dart';
import 'package:fitness4all/screen/login/otp_screen.dart';
import 'package:flutter/material.dart';

class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key});

  @override
  State<MobileNumberScreen> createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Enter your Mobile Number",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const RoundTextField(
                hintText: "i.e +91 9730627087",
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 40,
              ),
              RoundButton(title: "VERIFY", isPadding: false, onPressed: () {
                context.push( const OTPScreen());
              }),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}