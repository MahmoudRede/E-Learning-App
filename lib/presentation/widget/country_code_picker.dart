//
// import 'package:e_learning_app/presentation/styles/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:e_learning_app/presentation/styles/app_size_config.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// class CountryCodePickerWidget extends StatelessWidget {
//   const CountryCodePickerWidget({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<AuthCubit, AuthState>(
//       listener: (context, state){},
//       builder: (context, state) {
//         return Container(
//           height: SizeConfig.height * 0.06,
//           width: SizeConfig.width,
//
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: AppColor.gray,
//               width: 1,
//             ),
//             borderRadius: BorderRadius.circular(SizeConfig.height*0.01),
//           ),
//
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: SizeConfig.height*0.02),
//             child: CountryPickerDropdown(
//               initialValue: 'eg',
//               icon: const Icon(
//                 Icons.keyboard_arrow_down,
//                 color: AppColor.black,
//               ),
//               itemBuilder: _buildDropdownItem,
//               onValuePicked: (Country country) {
//                 AuthCubit.get(context).changeCountryCode(country.phoneCode);
//                 debugPrint(country.phoneCode);
//                 debugPrint(country.name);
//               },
//               isExpanded: true,
//
//
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
//
// Widget _buildDropdownItem(Country country) {
//   return Text(
//     country.name,
//     style: TextStyle(
//       fontSize: FontSize.headline4Size,
//       color: AppColor.black,
//       fontWeight: FontWeight.w500,
//     ),
//   );
// }