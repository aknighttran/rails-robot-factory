FactoryBot.define do
  factory :robot do
    name 'Bob'
    serial { SecureRandom.hex }
    friendly true

    inventor
  end
end

# FactoryBot.create(:robot)
  # creates and saves

# FactoryBot.create(:robot, friendly: false)

# FactoryBot.create(:robot, friendly: false, name: 'Steve')

# FactoryBot.build(:robot)
  # creates an instance but not saves

# FactoryBot.attributes_for(:robot)
  # list all the attributes a robot has, with a key value pair

# FactoryBot.build_stubbed(:robot)
  # creates a default factory for a given model

# FactoryBot.create(:robot) do |robot|
  # robot.parts(attributes_for(:parts))
# end

# Lazy Attributes
  # name { Robot.generate_name }

# Dependent Attributes
  # email { "#{first_name}@email.com"}

# Sequencing
  # sequence :email do |n|
  #   "inventor#{n}@email.com"
  # end

# Multiple robots
  # build_list(:robot, 100)

  # create_list(:robot, 100)

# callbacks
  # before(:build)
  # after(:build)
  # before(:create)
  # before(:after)
  # before(:stub)

  