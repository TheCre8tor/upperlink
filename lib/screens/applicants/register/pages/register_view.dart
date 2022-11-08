part of 'register_page.dart';

class _RegisterView extends StatelessWidget {
  const _RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Color.fromARGB(255, 253, 0, 0),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 25,
              right: 25,
              bottom: 0,
              left: 25,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45, bottom: 35),
                  child: Column(
                    children: const [
                      Text(
                        "Upperlink Digital",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Solution LTD",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: const [
                      FormBackground(
                        form: RegisterForm(),
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
