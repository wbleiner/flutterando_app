import 'package:flutterando_app/models/exercise_model.dart';
import 'package:flutterando_app/routes/app_routes.dart';

final activtyList = [
  ExerciseModel(
    title: 'Animação',
    exerciseAddressList: [
      AppRoutes.implicitAnimation1,
      AppRoutes.implicitAnimation2,
      AppRoutes.controlledAnimation1,
      AppRoutes.controlledAnimation2,
    ],
  ),
  ExerciseModel(
    title: 'Mockups',
    exerciseAddressList: [
      AppRoutes.mockupTinder,
      AppRoutes.mockupExpenses,
    ],
  ),
  ExerciseModel(
    title: 'Playground',
    exerciseAddressList: [],
  ),
];
