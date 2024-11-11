import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class ElTransportadorOperadoresAuthUser {
  ElTransportadorOperadoresAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserDataStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<ElTransportadorOperadoresAuthUser>
    elTransportadorOperadoresAuthUserSubject =
    BehaviorSubject.seeded(ElTransportadorOperadoresAuthUser(loggedIn: false));
Stream<ElTransportadorOperadoresAuthUser>
    elTransportadorOperadoresAuthUserStream() =>
        elTransportadorOperadoresAuthUserSubject
            .asBroadcastStream()
            .map((user) => currentUser = user);
