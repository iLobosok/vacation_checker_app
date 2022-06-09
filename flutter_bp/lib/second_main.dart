// import 'package:flutter/material.dart';
// import 'package:flutter_bp/bloc/navigation/cubit/navigation_cubit.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'constants/constants.dart';

// class SecondMainScreen extends StatelessWidget {
//   const SecondMainScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     const inActiveIconColor = Color(0xFFB6B6B6);
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       backgroundColor: Colors.white,
//       body: BlocBuilder<NavigationCubit, NavigationState>(
//         builder: (context, state) {
//           switch (state.appMode) {
//             case AppMode.catalog:
//               return const CatalogScreen();
//             case AppMode.favorite:
//               return const FavoriteScreen();
//             case AppMode.cart:
//               return const CartScreen();
//             case AppMode.profile:
//               return ProfileScreen();
//             default:
//               return const CatalogScreen();
//           }
//         },
//       ),
//       bottomNavigationBar: BlocBuilder<MainAppBloc, MainAppState>(
//         builder: (context, state) {
//           return BottomNavigationBar(
//             onTap: (index) => BlocProvider.of<MainAppBloc>(context).add(
//               MainAppPageTapped(
//                 AppMode.values[index],
//               ),
//             ),
//               selectedItemColor: greypanel,
//               unselectedItemColor: unselected_panel_bg.withOpacity(0.8),
//               currentIndex: state.index,
//               showUnselectedLabels: true,
//              // ignore: prefer_const_literals_to_create_immutables
//              items: [
//                 const BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.house
//                   ),
//                   label: 'Home',
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.search,
//                   ),
//                   label: 'Search',
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: Icon(Icons.notifications),
//                   label: 'Notifications',
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: Icon(Icons.settings),
//                   label: 'Settings',
//                 ),
//               ], );
//         },
//       ),
//     );
//   }
// }