--Total time a user has worked on a task
CREATE VIEW user AS
SELECT user.name as user_name, task.name as task_name, SUM(EXTRACT(EPOCH FROM (time_blcoks.end_time - time_blocks.start_time))) as Total_Time
FROM user
Left Join task on user.id = task.user_id
Left Join time_blocks on user.id = time_blocks.user_id && task.id = time_blocks.task_id
Where user.name = "Some entered value by the user" && task.name = "Some entered task by the user"