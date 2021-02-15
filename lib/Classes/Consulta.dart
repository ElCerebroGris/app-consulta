class Data {
  Map fetched_data = {
    "data": [
      {"id": 111, "name": "abc"},
      {"id": 222, "name": "pqr"},
      {"id": 333, "name": "abc"}
    ]
  };
  List _data;

//function to fetch the data

  Data() {
    _data = fetched_data["data"];
  }

  int getId(int index) {
    return _data[index]["id"];
  }

  String getName(int index) {
    return _data[index]["name"];
  }

  int getLength() {
    return _data.length;
  }
}
