import 'package:flutter/material.dart';
import 'package:todoapp/widgets/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:gap/gap.dart';

class CreateTaskScreen extends StatelessWidget {
  static CreateTaskScreen builder(BuildContext context, GoRouterState state) =>
    const CreateTaskScreen();
  const CreateTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: "Agregar nueva tarea"),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          const CommonTextField(
              title: "Nombre de la tarea",
              hintText: "Nombre de la tarea",

           ),
            const Gap(16),
          const Row(
                children: [
                  Expanded(
                    child: CommonTextField(
                    title: "Fecha de la tarea",
                    hintText: "Febrero 20, 2022",
                    
                                  ),
                  ),
                  const Gap(10),
                  Expanded(
                    child: CommonTextField(
                    title: "Hora de la tarea",
                    hintText: "16:00",
                    
                                  ),
                  ),
              
                ],
           ),
            const Gap(16),
           const CommonTextField(
              title: "Detalles de la tarea",
              hintText: "Detalles de la tarea",
              maxLines: 6,

           ),
           const Gap(20),
           ElevatedButton(
            onPressed: (){},
            child:const DisplayWhiteText(text: "Agregar tarea"),
           )
          ],
        ),
      )
    );
  }
}