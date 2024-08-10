import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notly/constants.dart';
import 'package:notly/cubits/notes_cubit/notes_cubit.dart';
import 'package:notly/models/note_model.dart';
import 'package:notly/simple_bloc_observer.dart';
import 'package:notly/views/onboarding_view.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotlyApp());
}

class NotlyApp extends StatelessWidget {
  const NotlyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: OnBoardingView(),
      ),
    );
  }
}
