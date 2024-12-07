import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/home/presentation/manager/best_seller/best_seller_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/app_router.dart';
import 'features/home/data/repo/home_repo_imp.dart';
import 'features/home/presentation/manager/all_books/all_books_cubit.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatefulWidget {
  const Bookly({super.key});

  @override
  State<Bookly> createState() => _BooklyState();
}

class _BooklyState extends State<Bookly> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AllBooksCubit(getIt.get<HomeRepoImp>()),
          ),
          BlocProvider(
            create: (context) => BestSellerCubit(getIt.get<HomeRepoImp>()),
          ),
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: AppRouter.router,
        ));
    // home: const SplashScreen(),
  }
}
