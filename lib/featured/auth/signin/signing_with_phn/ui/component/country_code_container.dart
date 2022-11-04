import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:takky/shared/utils/index.dart';
import 'package:takky/shared/widgets_one/index.dart';

class CountryCodeContainer extends StatelessWidget {
  const CountryCodeContainer({
    super.key,
    this.onChange,
  });

  final Function(CountryCode)? onChange;

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return CustomContainer(
      width: double.maxFinite,
      height: SizeUtils.getProportionateScreenHeight(55),
      padding: EdgeInsets.symmetric(
          horizontal: SizeUtils.getProportionateScreenWidth(18)),
      radius: 08,
      alignment: Alignment.centerLeft,
      borderWidth: 1,
      borderColor: Colors.black54,
      color: Colors.transparent,
      child: Row(
        children: [
          // Country Code
          InkWell(
            onTap: () {},
            child: CountryCodePicker(
              // onChanged: (CountryCode country) async {
              //   print(country);
              // },
              onChanged: (CountryCode? country) async =>
                  await onChange!(country!),
              padding: EdgeInsets.zero,
              initialSelection: '+880',
              //showFlag: false,
              showFlagDialog: true,
              showFlagMain: true,
              showCountryOnly: true,
              hideMainText: true,
              flagDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
              ),
              // showFlag: true,
              // comparator: (a, b) => b.name!.compareTo(a.name!),
              // builder: (c) {
              //   return const CustomContainer();
              // },
            ),
          ),
          //SizedBox(width: SizeUtils.getProportionateScreenWidth(20)),
          // Line
          CustomContainer(
            height: SizeUtils.getProportionateScreenHeight(30),
            width: 1,
            color: Colors.black54,
          ),
          SizedBox(width: SizeUtils.getProportionateScreenWidth(20)),
          // TextField
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(0),
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(
                  RegExp('[0-9]'),
                ),
                LengthLimitingTextInputFormatter(11),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
