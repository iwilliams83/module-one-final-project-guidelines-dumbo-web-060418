data = [
  ["INTJ", "Lady Melisandre", "Independent, confident, and a truth seeker, Melisandre is a creepy Red Priestess with a plan. As a mastermind INTJ, she focuses on strategy and allows someone else be the face of her movement (but don't you dare forget that she's the one calling the shots). She tries to shove away all her doubts and painful memories of her orphan past in order to execute her plans flawlessly, even if those plans involve just a smidge of human sacrifice."],
  ["INTP", "Varys the Spider", "Analytical and private, you can never tell quite what Varys is thinking. Much like Melisandre, he's an Essos orphan with a disturbing past, but unlike her, we're never entirely sure where Varys' loyalties lie. He's creative and dangerously smart with no interest in leading, but every interest in silently pulling the strings from the shadows."],
  ["ENTJ", "Cersei Lannister", "Bold, fierce, and ruthless, Cersei is a commanding ENTJ. She will find a way to stay in power, and she'll destroy anyone in her path (possibly with wildfire). She loves her kids in her own frightening way, but she's a little more detached about all her other relationships. She's also impatient and quick to judge, which is perhaps not the best quality in a queen."],
  ["ENTP", "Tyrion Lannister", "Tyrion is quick, resourceful, and more like his sister than he'd care to admit. As an ENTP, he can't resist a chance to show off his wits, but he gets bored by the more routine aspects of life, such as being repeatedly imprisoned for crimes he didn't commit. Lucky for Tyrion, his smarts and charisma usually save him in the nick of time."], ["INFJ", "Jon Snow", "Quiet and forceful, with a strict set of values, Jon is a classic INFJ. He's intense and thoughtful as a leader, but he's most comfortable being a lone wolf. He'll always try to make the honorable choice, and he cares deeply about those around him, even if he tries to come across as strong and silent."],
  ["INFP", "Daenerys Targaryen", "Daenerys is an idealist. She's also a naturally shy INFP, but circumstances have forced her to be more of a leader. Dany will always try to serve humanity and do the right thing, but she's also highly adaptable and able to see all the possibilities — which can make it a bit hard for her to know exactly which choice is the 'right' choice."], ["ENFJ", "Margaery Tyrell", "Margaery is fun. Sure, she can plot and scheme with the best of them, but as an ENFJ, she's also a sweet, sensitive, popular girl. She likes to party and hates being alone, she volunteers with those less fortunate (which is, conveniently, also a great PR opportunity), and she's mesmerizing to everyone around her."],
  ["ENFP", "Renly Baratheon", "Much like his bride and his boyfriend, Renly Baratheon is a big charmer. He's great at winning loyalties and climbing that social ladder. So what if he's not *technically* next in line for the throne? He's determined to win the day anyway (unless, of course, he gets murdered by a shadow monster)."], ["ISTJ", "Stannis Baratheon", "Stannis is the responsible Baratheon brother. He's all about rules and logic and duty. He's hard-working and interested in upholding tradition, even if it means letting Melisandre murder his little brother with a shadow monster. As an ISTJ, he's fact-minded and thorough, and he never gives up on a task once he's set his mind to it."],
  ["ISFJ", "Brienne of Tarth", "Brienne is quiet, kind, and devoted. As an ISFJ, she's a natural protector of the weak, and she's a warm-hearted individual once you get past her initial awkwardness. She's well-known for putting loyalty above her own feelings and safety, and she'll do almost anything for her friends — which becomes a bit of a problem when her friends are mortal enemies."],
  ["ESTJ", "Petyr 'Littlefinger' Baelish", "Littlefinger is the consummate manager. He's a cunning politician, a strong-willed ESTJ, and a man of great ambition. He schmoozes and charms, but keeps his big plans close to the chest. He thinks of himself as a brilliant strategist, but he's in danger of underestimating his 'underlings' in trying to claim all that power for himself. "],
  ["ESFJ", "Sansa Stark", "Sweet, kind-hearted Sansa Stark is normally a people person. She's an ESFJ who likes helping others and values traditions. When she was young, she dreamed of romance, beautiful dresses, and grand, epic tales of chivalry. But she's also insecure, and swiftly learning how to use her good manners to survive in a world that's far less chivalrous than she ever imagined."],
  ["ISTP", "Arya Stark", "Risky and stubborn, Arya is a bold ISTP. She's curious and hard-working, a little out-of-touch with her feelings, and great in an emergency. ISTPs are known for being adaptable and valuing their freedom, which is Arya all over. She's also great at figuring out solutions on the fly (usually stabbing people), and she doesn't care for traditional gender roles, another ISTP trait."],
  ["ISFP", "Samwell Tarly", "Sam is quiet, sensitive, and conflict-averse. Like most ISFPs, he's more interested in learning and creating than in fighting. He's very loyal, and appreciates the finer things in life, even if he rarely encounters them up at the Wall. He's also kind and caring, and probably would have been a scholar or an artist if his dad had allowed it."],
  ["ESTP", "Jaime Lannister", "Action-oriented and a little bit careless, Jaime has to be an ESTP. He's loyal in his own fashion, but he doesn't much care for the laws of the land. He's impulsive and brash, like that time he murdered his own king and pushed a small boy out of a window. It's only once he loses his sword hand that Jaime is forced to stop and think for a minute about whether or not his actions are helping anyone."],
  ["ESFP", "Oberyn Martell", "Theon Greyjoy used to be an ESFP too... but after what Ramsay did to him, his personality is a little warped. So the best example of an ESFP has got to be Oberyn Martell, the daring Dornishman who loves life and being the center of attention. He feels intensely, but when he's not revenging his dead sister he's living it up as a cool party dude and matching wits with Tyrion in King's Landing."]
]


data.each do |d|
  Character.create(personality: d[0], name:d[1], description: d[2])
end



questions = [["What's your favorite season?",["(1) Winter", "(2) Spring", "(3) Summer", "(4) Fall"]],
            ["What's your favorite color scheme?",["(1) Ocean", "(2) Sunset", "(3) Rainbow"]],
          ["Marvel or DC",["(1) Marvel", "(2) DC"]],
          ["Pick a superpower",["(1) Invisibility", "(2) Invulnerability", "(3) Flight"]],
      ["What color is the dress?",["(1) Blue and black", "(2) White and gold"]],
    ["How do you prepare cereal?",["(1) Milk first", "(2) Cereal first"]],
  ["Are you...",["(1) Left-handed", "(2) Right-handed"]],
["Are you a...",["(1) Cat person", "(2) Dog person", "(3) I hate pets"]],
["Is the earth round or flat?",["(1) Definitely flat", "(2) Definitely round", "(3) Definitely boxy"]],
["Is a hotdog a sandwich?",["(1) Yes, of course", "(2) No, its a hotdog"]]]

questions.each do |question|
  Question.create(content: question[0], answer1: question[1][0], answer2: question[1][1], answer3: question[1][2], answer4: question[1][3])
end
