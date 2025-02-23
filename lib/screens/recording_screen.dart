// import 'package:permission_handler/permission_handler.dart';
//
// Future<void> _requestPermissions() async {
//   final statuses = await [
//     Permission.camera,
//     Permission.microphone,
//   ].request();
//
//   if (statuses[Permission.camera] != PermissionStatus.granted ||
//       statuses[Permission.microphone] != PermissionStatus.granted) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: Text('Camera and microphone permissions are required.'),
//     ));
//     return;
//   }
//   _initializeCamera();
// }
//
// @override
// void initState() {
//   super.initState();
//   _requestPermissions();
// }