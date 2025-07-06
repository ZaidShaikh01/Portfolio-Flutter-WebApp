class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  Project(this.name, this.description, this.image, this.link);
}

List<Project> projectList = [
  Project(
    'Weather Application',
    'Presenting "Weatherly" — a Flutter-powered weather application that brings forecasts to life with clarity and elegance. Stay informed and prepared as you explore real-time weather updates, temperature trends, and detailed forecasts in a sleek, intuitive interface. Whether you are planning your day or tracking storms, Weatherly makes it effortless to experience the world’s climate — one location at a time.',
    'assets/images/coffee.png',
    'https://github.com/ZaidShaikh01/flutter_learn/tree/main/weather_app',
  ),
  Project(
    'TO-DO Application',
    'Presenting "Taskly" — a Flutter-based to-do application designed to simplify your day and boost your productivity. Whether it\'s managing daily chores or tracking long-term goals, Taskly offers a clean, intuitive interface that helps you stay organized and focused. Add, edit, and complete tasks with ease — turning chaos into clarity, one task at a time.',
    'assets/images/car.png',
    'https://github.com/Hamad-Anwar/Car-Controller-Getx-Flutter',
  ),
  Project(
      'Plant Disease Detection',
      'Presenting "Plant Disease Detector" — a Flutter application that empowers users to identify plant diseases using advanced on-device machine learning. Capture or upload leaf images effortlessly through the built-in image picker, and get instant diagnostic feedback powered by tflite_v2. With a smooth and intuitive UI, the app brings the power of TensorFlow Lite and ML Kit directly to your fingertips — helping you keep your plants healthy and thriving.',
      'assets/images/alarm.jpg',
      'https://github.com/ZaidShaikh01/Plant-Disease-Detection'),
  Project(
      'ShoeCart',
      'Presenting "ShoeCart" — a modern Flutter UI application that showcases a sleek shoe shopping experience. Explore a curated collection of stylish footwear with an elegant interface, smooth animations, and interactive cart functionality. Designed with aesthetic precision and responsive layouts, ShoeCart offers a seamless and intuitive browsing experience for fashion-forward users.',
      'assets/images/cui.png',
      'https://github.com/ZaidShaikh01/flutter_learn/tree/main/shoes_cart'),
  Project(
      'Global Chat',
      'Presenting "Global Chat" — a real-time Flutter chat application that connects users instantly across the globe. Built using Firebase Authentication and Realtime Database, it enables seamless user sign-in and live message exchange in a dynamic chat interface. Whether you\'re chatting with one or many, Global Chat delivers a smooth, secure, and responsive messaging experience — powered entirely by the cloud.',
      'assets/images/recipe.png',
      'https://github.com/ZaidShaikh01/flutter_learn/tree/main/global_chat_app'),
  Project(
      'FunFact',
      'Presenting "FunFact" — a lightweight Flutter application that delivers interesting quotes and facts at your fingertips. Powered by the Dio package for efficient API handling, the app fetches fresh content with speed and simplicity. With a clean UI and smooth experience, FunFact offers a fun way to explore bite-sized wisdom, humor, and surprises — one tap at a time.',
      'assets/images/task.png',
      'https://github.com/ZaidShaikh01/flutter_learn/tree/main/funfact_app'),
];
