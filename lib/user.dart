class User {
  String _name;
  int _points;

  User(_name, _points) {
    this._name = _name;
    this._points = _points;
  }

  setUser_points() {
    _points++;
  }

  getUser_points() {
    return _points;
  }

  setUser_name(input_name) {
    _name = input_name;
  }

  getUser_name() {
    return _name;
  }
}
