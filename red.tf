
  # 🔵 Task 2: Depends on Task 1 and Task 3
  task {
    task_key = "task_2"
    depends_on = ["update_cluster_config", "task_3"]  # Depends on multiple tasks
    
    notebook_task {
      notebook_path = "/Workspace/Task2"
    }
  }

  # 🔵 Task 3: Just an independent task that could be dependent on Task 1, for example
  task {
    task_key = "task_3"
    depends_on = ["update_cluster_config"]  # Can depend on other tasks as well

    notebook_task {
      notebook_path = "/Workspace/Task3"
    }
  }

  # 🔵 Task 4: Independent task that will also inherit cluster from update_cluster_config
  task {
    task_key = "task_4"
    depends_on = ["update_cluster_config"]  # No other dependencies

    notebook_task {
      notebook_path = "/Workspace/Task4"
    }
  }
}
