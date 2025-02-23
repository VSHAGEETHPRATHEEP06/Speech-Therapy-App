import '../models/session.dart';

class SessionService {
  List<Session> fetchSessions() {
    return [
      Session(title: 'Session 1', description: 'Speech Improvement', date: DateTime.now()),
      Session(title: 'Session 2', description: 'Pronunciation Practice', date: DateTime.now()),
    ];
  }
}
