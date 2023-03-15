import 'package:flutter/material.dart';
import 'package:pixabay_restjson/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixabay',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: HomePageScreen(),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => UserBloc(
//         RepositoryProvider.of<UserRepository>(context),
//       )..add(LoadUserEvent()),
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text('The Bloc App'),
//         ),
//         body: BlocBuilder<UserBloc, UserState>(
//           builder: (context, state) {
//             if (state is UserLoadedState) {
//               return const Center(
//                 child: CircularProgressIndicator(),
//               );
//             }

//             if (state is UserLoadedState) {
//               List<UserModel> userList = state.users;
//               return ListView.builder(
//                   itemCount: userList.length,
//                   itemBuilder: (_, index) {
//                     return Card(
//                       color: Colors.blue,
//                       elevation: 4,
//                       margin: const EdgeInsets.symmetric(vertical: 10),
//                       child: ListTile(
//                         title: Text(
//                           userList[index].user,
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                         subtitle: Text(
//                           userList[index].tags,
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                         trailing: CircleAvatar(
//                             backgroundImage:
//                                 NetworkImage(userList[index].userImageURL)),
//                       ),
//                     );
//                   });
//             }
//             return Container();
//           },
//         ),
//       ),
//     );
//   }
// }
