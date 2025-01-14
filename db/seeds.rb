# Plant モデルのモックデータ
plant = Plant.create!(
  name: 'バラ',
  description: 'A beautiful flowering plant.',
  search_key: 'バ'
)

# GrowthCondition モデルのモックデータ
GrowthCondition.create!(
  plant: plant,
  light: 'Full Sun',
  soil: 'Well-drained',
  hardiness_zone: '3-9'
)

# CarePeriod モデルのモックデータ
CarePeriod.create!(
  plant: plant,
  period_type: 'fertilizing_period',
  start_date: DateTime.parse('2024-01-01 10:00:00'),
  end_date: DateTime.parse('2024-03-01 10:00:00')
)

CarePeriod.create!(
  plant: plant,
  period_type: 'pruning_period',
  start_date: DateTime.parse('2024-04-01 10:00:00'),
  end_date: DateTime.parse('2024-06-01 10:00:00')
)

# PropagationMethod モデルのモックデータ
PropagationMethod.create!(
  plant: plant,
  description: 'Cutting'
)
