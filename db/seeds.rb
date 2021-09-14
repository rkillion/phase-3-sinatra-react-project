puts "🌱 Seeding spices..."
#prevents creation of copies
Feature.destroy_all
Game.destroy_all
Developer.destroy_all
GameFeature.destroy_all

# Seed your database here

# developers
vinman = Developer.create(name: "Vincent Orsini",github_profile: "https://github.com/Vinmanftw")

#games
vietnam_frogger2 = Game.create(title:"VietnamFrogger2.0",github_link: "https://github.com/Vinmanftw/Vietnam_Frogger2.0",preview_href: "https://www.youtube.com/watch?v=L9s-Uaz8lLw",description: "Get harris to the helicopter and successful exfil from Vietnam.",language: "C#",has_comments?: false,theme: "Vietnam War",game_type: "Action/Arcade",file_size: 0,keyboard?: true,controller?: true,developer_id: vinman.id)
breakout = Game.create(title:"Breakout", github_link: "https://github.com/Vinmanftw/Breakout-Game",preview_href: "https://www.youtube.com/watch?v=rzkqJHEb2bs",description: "Breakout remade with multiple space themed backgrounds as well as easter egg themed backgrouds. Get points for taking out targets and beating your high scores. Use points to buy different skins for either the paddle, ball, or targets!!",language: "C#",has_comments?: true,theme: "Breakout",game_type: "Arcade",file_size: 0,keyboard?: false,controller?: true,developer_id: vinman.id)

#create each feature

sound = Feature.create(title: "sound",description: "The game has sound.")
single_player = Feature.create(title: "single player",description: "This game is for one player.")
store = Feature.create(title:"store",description: "This game has a store/shopping mechanic")
high_score = Feature.create(title: "high score", description: "This game has high score mechanic typically meaning the game has no end and the objective is to have fun beating your high scores")
easter_eggs = Feature.create(title: "easter eggs", description: "This game has easter eggs which are secrets that can be features, designes, referances, items, weapons, etc.")
#game features

GameFeature.create(game_id: vietnam_frogger2.id,feature_id: sound.id,feature_explanation: "I used sound effects for helicopters.")
GameFeature.create(game_id: vietnam_frogger2.id,feature_id: single_player.id,feature_explanation: "Only one player can play Vietnam Frogger.")

GameFeature.create(game_id: breakout.id,feature_id: sound.id,feature_explanation: "I used sound effects.")
GameFeature.create(game_id: breakout.id,feature_id: single_player.id,feature_explanation: "Only one player can play Breakout.")
GameFeature.create(game_id: breakout.id,feature_id: store.id,feature_explanation: "I corperate shopping mechanics to add a use for the point system as well as make the game more desirable to play.")
GameFeature.create(game_id: breakout.id,feature_id: high_score.id,feature_explanation: "I made this game high score driven")
GameFeature.create(game_id: breakout.id,feature_id: easter_eggs.id,feature_explanation: "added easter eggs for players willing to get enough points to get all skins of the same theme")

puts "✅ Done seeding!"
