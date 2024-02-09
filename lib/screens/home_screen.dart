import 'package:flutter/material.dart';
import 'package:todoapp/config/routes/routes.dart';
import 'package:todoapp/data/data.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/widgets/widgets.dart';
import 'package:go_router/go_router.dart';


class HomeScreen extends StatelessWidget {
 static  HomeScreen builder(BuildContext context, GoRouterState state) =>
    const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.devicesSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                 child: const Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Febrero 6 de 2024',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    Gap(10),
                    DisplayWhiteText(
                      text: 'Mi Todo List',
                      fontSize: 40,
                    ),
                  ],
                 ),
                
              ),
            ],
          ),
              Positioned(
                top:160,
                left: 0,
                right: 0,
                child: SafeArea(
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const  DislayListOfTask(
                          tasks:[
                            Task(
                              title: 'Comprar leche',
                              note: 'leche',
                              time: '10:00 AM',
                              date: 'Feb 6, 2024',
                              isCompleted: false,
                              category: TaskCategories.personal,
                              
                            ),
                            Task(
                              title: 'Llamar a mamá',
                              note: 'llamar a mamá',
                              time: '12:00 PM',
                              date: 'Feb 6, 2024',
                              isCompleted: false,
                              category: TaskCategories.home,
                              
                            ),
                            Task(
                              title: 'Examen de Integrativa',
                              note: 'Intentar sacar 20',
                              time: '12:00 PM',
                              date: 'Feb 6, 2024',
                              isCompleted: false,
                              category: TaskCategories.education,
                              
                            ),
                          ],
                        ),                                        
                        const Gap(20),
                         Text(
                          "Completado",
                          style: context.textTheme.titleMedium,
                          ),
                        const Gap(20),
                        const  DislayListOfTask(
                          tasks:[
                            Task(
                              title: 'Informe SRI',
                              note: '',
                              time: '12:00 AM',
                              date: 'Feb 4, 2024',
                              isCompleted: true,
                              category: TaskCategories.work,
                              
                            )
                          ],
                          isCompletedTasks: true,
                          ),  
                        const Gap(20),
                        ElevatedButton(
                          onPressed: () => context.push(RouteLocation.createTask),
                          child:const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DisplayWhiteText(text: 'Agregar Tarea'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
      ),
    );
  }
}