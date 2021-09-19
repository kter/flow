# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for flow_id in 1...3 do
    Tflow.create(
        [
            name: 'flow' + flow_id,
            description: 'flow' + flow_id
        ]
    )
    
    for task_id in 1...10 do
        Task.create(
            [
              name: 'task' + task_id,
              description: 'description' + task_id,
              tflow_id: flow_id
            ]
        )
    end
end

  