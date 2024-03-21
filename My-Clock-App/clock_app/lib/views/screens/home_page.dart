import 'package:flutter/material.dart';

import '../../utils/routes.dart';
import '../components/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green.shade300,
              ),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.black,
                foregroundImage: NetworkImage(
                  "https://cdn.vectorstock.com/i/preview-1x/13/04/male-profile-picture-vector-2041304.jpg",
                ),
              ),
              accountName: const Text(
                "Clock App",
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text(
                "clockapp@demo.io",
                style: TextStyle(color: Colors.black),
              ),
            ),
            buttonRow(
              btnName: "Demo",
              button: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  "Demo button",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            buttonRow(
              btnName: "Images",
              button: Switch(
                activeColor: Colors.green,
                activeThumbImage: const NetworkImage(
                  "data:image/jpeg;base64,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TvC9UXO7Q7PNm+0i9GUcRxVLGYKOIjyktH+H2exaw2KlRfNcvg5iKZbccyiHZo3ZJBleOB3HuWxHKuVxGGnSluzVn90NmMoVI70XdEwyRZmuUVHMthk6pOnYbKDN9rlW61mTLIJFG0MaM90usYcq5kg2xfdLqzMqF6AsXXQuWMyLE+ZLa45IzFywvkWCSZa8kykjTuPjAzSTLVllWGSVa7pCSGtBc47mjerdDDynJRirskbjCO9J2RdLL/wOJK6XZfATcTzDX1GHgFfs5s1lImqNX72t4NXVgLqcFgY4dXecufLsRjYrFut/Sso+/ayqIi0CmEREAEREAEREAEREAEREARuL4NFUNIePS4OG9cRieDz0x3GSPg4bwF6SrHMBFiLjkVHVowqx3Zq6++Q+nUnTd4ux5bFUA7j4cR4LOyZdbiuysMt3M+zfzHNcvW4DVQ8OkbzG9YtfY71pO/Y/n5NOltGLyqK3avguZOsrahRBqMps9rmHtBWRlQDuIPismrgqtPpRa8PysvUuwqU6nRkn4kuKhXCoUSJFd0yq8JD+GShqFaahRvTK3pEcJBwyQdULC+dab5gN5A7zZYTUg6Nu48mgqzSwdSfQi34P30GynTp9KSRuPmWCWcDebLYo8IqpuqzI3m7eulwvZCNhDpiZHdu5atDY8nnUduxZvz09ynU2jBdBX78l8nMYfQT1BtG0tbxefku1wTZ6KnF7ZpOLjrqpaKJrBZoAA4BZFt0aFOjG0Fb3feZdWtOq7zd/vUERFKRhERABERABERABERABERABERABERABERAGpU4bDJ142nwUPU7HUztwLe5dGiAOMk2I9iUj3rAdjJuE3xXdImuMXqrjlKS0djhBsZPxm+KzR7EH15ifErtUQoRWiS8Ac5PVs5mm2Mp26uu5TFLhMEfUjaO2y3kThpQC25VREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAEREAf/2Q==",
                ),
                value: image,
                onChanged: (val) {
                  setState(() {
                    image = val;
                  });
                },
              ),
            ),
            Visibility(
              visible: image,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...bgImages
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              selectedImage = bgImages.indexOf(e);
                              setState(() {});
                            },
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                                image: DecorationImage(
                                  image: NetworkImage(e),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green.shade300,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            buttonRow(
              btnName: "Clock page",
              button: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MyRoutes.clockPage);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  "Clock Page",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            buttonRow(
              btnName: "Strap Watch",
              button: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MyRoutes.digitalPage);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  "Strap Watch",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            buttonRow(
              btnName: "Stopwatch page",
              button: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MyRoutes.stopwatchPage);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade300),
                child: const Text(
                  "Stopwatch page",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
