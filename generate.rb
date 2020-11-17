require "rules_ai"

RulesAi::Rules_Set.write_poetry

poem = File.readlines("output/poetry/poem.txt")

first_line   = poem[0].strip
second_line  = poem[1].strip
third_line   = poem[2].strip
fourth_line  = poem[3].strip
fifth_line   = poem[4].strip
sixth_line   = poem[5].strip
seventh_line = poem[6].strip
eighth_line  = poem[7].strip

bot_name = "Bianca"

ai_visual_novel = "define ai = Character('#{bot_name}')

label start:
    scene bg black

    ai '#{first_line}'

    ai '#{second_line}'

    ai '#{third_line}'

    ai '#{fourth_line}'

    ai '#{fifth_line}'

    ai '#{sixth_line}'

    ai '#{seventh_line}'

    ai '#{eighth_line}'

    return
"

open("script.rpy", "w") { |f|
  f.puts ai_visual_novel
}
