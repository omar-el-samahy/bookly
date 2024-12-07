// import 'package:bookly/features/home/presentation/views/home_screen.dart';
// import 'package:bookly/features/splash/presentation/views/splash_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
//
// abstract class AppRouter {
//   static String homeView = '/HomeScreen';
//   static String bookDetailsScreen = '/BookDetailsScreen';
//   static final GoRouter router = GoRouter(
//     routes: <RouteBase>[
//       GoRoute(
//         path: '/',
//         builder: (BuildContext context, GoRouterState state) {
//           return const SplashScreen();
//         },
//       ),
//       GoRoute(
//         path: '/HomeView',
//         pageBuilder: (context, state) {
//           return CustomTransitionPage(
//             transitionDuration: const Duration(
//               seconds: 1,
//             ),
//             child: const HomeScreen(),
//             transitionsBuilder:
//                 (context, animation, secondaryAnimation, child) {
//               return SlideTransition(
//                 position: animation.drive(
//                   Tween(
//                     begin: const Offset(0, 1.5),
//                     end: Offset.zero,
//                   ).chain(
//                     CurveTween(curve: Curves.ease),
//                   ),
//                 ),
//                 child: FadeTransition(
//                   opacity: CurveTween(curve: Curves.easeInOutCirc)
//                       .animate(animation),
//                   child: child,
//                 ),
//               );
//             },
//           );
//         },
//       ),
//       // GoRoute(
//       //   path: '/HomeView',
//       //   builder: (BuildContext context, GoRouterState state) {
//       //     return const HomeView();
//       //   },
//       // ),
//       GoRoute(
//         path: '/BookDetailsView',
//         pageBuilder: (context, state) {
//           return CustomTransitionPage(
//             transitionDuration: const Duration(
//               milliseconds: 450,
//             ),
//             child: BlocProvider(
//               create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
//               child: BookDetailsView(
//                 bookModel: state.extra as Items,
//               ),
//             ),
//             transitionsBuilder:
//                 (context, animation, secondaryAnimation, child) {
//               return SlideTransition(
//                 position: animation.drive(
//                   Tween(
//                     begin: const Offset(1.5, 0),
//                     end: Offset.zero,
//                   ).chain(
//                     CurveTween(curve: Curves.ease),
//                   ),
//                 ),
//                 child: child,
//               );
//             },
//           );
//         },
//       ),
//       // GoRoute(
//       //   path: '/BookDetailsView',
//       //   builder: (BuildContext context, GoRouterState state) {
//       //     return BlocProvider(
//       //       create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
//       //       child: BookDetailsView(
//       //         bookModel: state.extra as Items,
//       //       ),
//       //     );
//       //   },
//       // ),
//       GoRoute(
//         path: '/SearchView',
//         pageBuilder: (context, state) {
//           return CustomTransitionPage(
//             transitionDuration: const Duration(
//               milliseconds: 150,
//             ),
//             child: BlocProvider(
//               create: (BuildContext context) =>
//                   SearchBookCubit(getIt.get<SearchRepoImpl>()),
//               child: const SearchView(),
//             ),
//             transitionsBuilder:
//                 (context, animation, secondaryAnimation, child) {
//               return FadeTransition(
//                 opacity:
//                     CurveTween(curve: Curves.easeInOutCirc).animate(animation),
//                 child: child,
//               );
//             },
//           );
//         },
//       ),
//       // GoRoute(
//       //   path: '/SearchView',
//       //   builder: (BuildContext context, GoRouterState state) {
//       //     return const SearchView();
//       //   },
//       // ),
//     ],
//   );
// }
