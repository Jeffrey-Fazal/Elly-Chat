# Clear existing data
User.destroy_all
Profile.destroy_all
Bot.destroy_all
Instance.destroy_all
Message.destroy_all

# Users
john = User.create!(username: 'john_doe', diagnosis: 'Unknown')
jane = User.create!(username: 'jane_doe', diagnosis: 'Unknown')

# Profiles
john_profile = Profile.create!(user: john, username: 'John', preferred_name: 'John', gender: 'Male', ethnicity: 'White')
jane_profile = Profile.create!(user: jane, username: 'Jane', preferred_name: 'Jane', gender: 'Female', ethnicity: 'White')

# Bots
eliza = Bot.create!(user: john, name: 'Eliza', personality: 'Intellectual', avatar: 'Eliza.jpg')
turing = Bot.create!(user: john, name: 'Turing', personality: 'Intellectual', avatar: 'Turing.jpg')
einstein = Bot.create!(user: jane, name: 'Einstein', personality: 'Intellectual', avatar: 'Einstein.jpg')
newton = Bot.create!(user: jane, name: 'Newton', personality: 'Intellectual', avatar: 'Newton.jpg')

# Instances
john_instance = Instance.create!(user: john, profile: john_profile, bot: eliza)
jane_instance = Instance.create!(user: jane, profile: jane_profile, bot: einstein)

# Messages
Message.create!(user: john, profile: john_profile, bot: eliza, instance: john_instance, content: 'Hello, Eliza.')
Message.create!(user: john, profile: john_profile, bot: eliza, instance: john_instance, content: 'How are you doing?')
Message.create!(user: jane, profile: jane_profile, bot: einstein, instance: jane_instance, content: 'Hi, Einstein.')
Message.create!(user: jane, profile: jane_profile, bot: einstein, instance: jane_instance, content: 'What are your thoughts on relativity?')
