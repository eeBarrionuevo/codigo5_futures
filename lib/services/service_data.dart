class ServiceData {
  Future<Map> getProfile() async {
    return Future.delayed(const Duration(seconds: 3), () {
      return {
        "id": 1,
        "fullName": "Juan Manuel",
        "role": "Desarrollador",
        "social": {
          "articles": 43,
          "following": 234,
          "rating": 6.3,
        },
        "information":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
      };
    });
  }

  Future<List<Map>> getTasks() async {
    return [
      {
        "id": 1,
        "title": "Ir de compras al super",
        "description": "No te olvides de llevar la lista",
        "image": "https://www...",
        "status": false,
      },
    ];
  }
}
