import 'package:flutter/material.dart';
import 'package:todoapp/data/models/task.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:todoapp/widgets/widgets.dart';



class DislayListOfTask extends StatelessWidget {
  const DislayListOfTask({super.key, required this.tasks, this.isCompletedTasks = false });

  final List<Task> tasks;
  final bool  isCompletedTasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.devicesSize;
    final height =
        isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.height * 0.3;

        final emptyTaskMessage = isCompletedTasks
            ? 'No hay tareas completadas'
            : 'No hay tareas pendientes!';       

    return CommomContainer(
                        height: height,
                        child: tasks.isEmpty
                        ?Center(
                          child: Text(
                            emptyTaskMessage,
                            style: context.textTheme.headlineSmall,
                          ),
                        
                        )

                         : ListView.separated(
                          shrinkWrap: true,
                          itemCount: tasks.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (ctx, index ){
                            final task = tasks[index];
                            return InkWell(
                              onLongPress:(){
                                //delete
                              },
                              onTap: ()async{
                                //details

                                await showModalBottomSheet(
                                  context: context, builder: (ctx){
                                    return TaskDetail(task: task);
                                  },
                                );
                              },
                              child:TaskTile(task: task),
                              );
                          }, separatorBuilder: (BuildContext context, int index) { 
                            return const Divider(thickness: 1.5);
                           },
                        ) ,
                      );
  }
}