class Book {
  String _title;
  bool _isRead;

  Book(this._title, this._isRead);

  bool get isRead {
    return _isRead;
  }

  void toggleRead() {
    _isRead = !_isRead;
  }
}
