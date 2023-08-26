class ServiceData {
  String title = "Hola";
  bool isCompleted = true;

  Future<Map<String, dynamic>> getProfile() async {
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
        "image":
            "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "information":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
      };
    });
  }

  Future<List<Map<String, dynamic>>> getTasks() async {
    return [
      {
        "id": 1,
        "title": "Ir de compras al super",
        "description": "No te olvides de llevar la lista",
        "image":
            "https://images.pexels.com/photos/16205515/pexels-photo-16205515/free-photo-of-vegetales-fruta-vista-superior-seleccion.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "status": false,
      },
      {
        "id": 2,
        "title": "Llevar las cosas a la casa del Luis",
        "description": "Son cosas delicadas debes de tener cuidado",
        "image":
            "https://images.pexels.com/photos/17815957/pexels-photo-17815957/free-photo-of-picnic-relajacion-camara-verano.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "status": true,
      },
      {
        "id": 3,
        "title": "Conseguir comida para las mascotas",
        "description": "Deben ser bajo en grasas",
        "image":
            "https://images.pexels.com/photos/17815428/pexels-photo-17815428/free-photo-of-naturaleza-verano-prado-en-pie.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        "status": false,
      },
    ];
  }
}
