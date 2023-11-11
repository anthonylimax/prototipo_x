import 'package:prototipo_x/models/user.dart';
import 'package:uuid/uuid.dart';

class ApiController {
  List<Map> AllMock = [];
  List<User> LoginsMock = [User(user: "email", password: "123")];
  GetAllPosts() {
    return AllMock;
  }

  AuthLogin(User clientReq) {
    for (User element in LoginsMock) {
      if (element.user == clientReq.user &&
          element.password == clientReq.password) {
        var uuid = Uuid();
        element.acessToken = uuid.v4();
        print(element);
        return element;
      }
    }
  }
}
