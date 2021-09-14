puts "🌱 Seeding spices..."

# Seed your database here

vinman = Developer.create(name: "Vincent Orsini",github_profile: "https://github.com/Vinmanftw")
example = Game.create(title:"VietnamFrogger2.0",github_link: "https://github.com/Vinmanftw/Vietnam_Frogger2.0",preview_href: "",description: "Get harris to the helicopter and successful exfil from Vietnam.",language: "C#",has_comments?: false,theme: "Vietnam War",game_type: "Action/Arcade",file_size: 0,keyboard?: false,controller?: true,developer_id: vinman.id)

#create each feature

sound = Feature.create(title: "sound",description: "The game has sound.")
single_player = Feature.create(title: "single player",description: "This game is for one player.")

#game features

GameFeature.create(game_id: example.id,feature_id: sound.id,feature_explanation: "I used sound effects.")
GameFeature.create(game_id: example.id,feature_id: single_player.id,feature_explanation: "Only one player can play.")

puts "✅ Done seeding!"
