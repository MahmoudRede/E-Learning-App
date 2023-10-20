
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:e_learning_app/business_logic/global_cubit/global_cubit.dart';
import 'package:e_learning_app/business_logic/global_cubit/global_states.dart';
import 'package:e_learning_app/presentation/styles/colors.dart';
import 'package:e_learning_app/presentation/styles/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:e_learning_app/presentation/styles/app_size_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CountryCodePickerWidget extends StatelessWidget {
  const CountryCodePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GlobalCubit, GlobalStates>(
      listener: (context, state){},
      builder: (context, state) {
        return Container(
          height: SizeConfig.height * 0.065,
          width: SizeConfig.width,

          decoration: BoxDecoration(
            border: Border.all(
              color: AppColor.gray,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
          ),

          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.02),
            child: CountryPickerDropdown(
              initialValue: 'eg',
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: AppColor.black,
                size: 15,
              ),
              itemBuilder: _buildDropdownItem,
              onValuePicked: (Country country) {
                GlobalCubit.get(context).changeCountryCode(country.phoneCode);

                debugPrint(country.phoneCode);
                debugPrint(country.name);
              },
              isExpanded: true,


            ),
          ),
        );
      },
    );
  }
}


Widget _buildDropdownItem(Country country) {
  return Text(
    "+${country.phoneCode}",
    style: TextStyle(
      fontSize: FontSize.headline4Size,
      color: AppColor.black,
      fontWeight: FontWeight.w500,
    ),
  );
}