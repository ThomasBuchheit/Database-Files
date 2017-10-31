--List all the tasks on a project and their total time
CREATE VIEW time AS
SELECT project.name as project_name, task.name as task_name, SUM(EXTRACT(EPOCH FROM (time_blocks.end_time - time_blocks.start_time)) as Time_Per_Task
From project
Left Join task on task.project_id = project.id
Left Join time_blocks on time_blocks.task_id = task.id && project_id.time_blocks = project
Where project.id = "Some valued entered by the user"