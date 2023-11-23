import 'package:prototipo_x/models/user.dart';
import 'package:uuid/uuid.dart';

class ApiController {
  List<Map> AllMock = [];
  List<User> LoginsMock = [User(email: "email", password: "123")];
  GetAllPosts() {
    return AllMock;
  }

  AuthLogin(User clientReq) {
    for (User element in LoginsMock) {
      if (element.email == clientReq.email &&
          element.password == clientReq.password) {
        return element;
      }
    }
  }
}
