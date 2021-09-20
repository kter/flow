# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for flow_id in 3.times do
    Tflow.create(
        [
            name: 'flow' + flow_id.to_s,
            description: 'flow' + flow_id.to_s
        ]
    )
    
    for task_id in 10.times do
        Task.create(
            [
              name: 'task' + flow_id.to_s + '-' + task_id.to_s,
              description: 'description' + flow_id.to_s + '-' + task_id.to_s,
              tflow_id: flow_id
            ]
        )
    end
end

  