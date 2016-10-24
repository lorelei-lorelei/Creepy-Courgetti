-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 24, 2016 at 03:04 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` text,
  `author` int(10) UNSIGNED DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `author`, `category`, `date`) VALUES
(23, 'Candle Cove', '<p class="p1" style="text-align: justify;"><strong>Skyshale033</strong><br /><strong>Subject: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">Does anyone remember this kid''s show? It was called Candle Cove and I must have been 6 or 7. I never found reference to it anywhere so I think it was on a local station around 1971 or 1972. I lived in Ironton at the time. I don''t remember which station, but I do remember it was on at a weird time, like 4:00 PM.</p>\r\n<p class="p1" style="text-align: justify;"><strong>mike_painter65</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">it seems really familiar to me&hellip;..i grew up outside of ashland and was 9 yrs old in 72. candle cove&hellip;was it about pirates? i remember a pirate marionete at the mouth of a cave talking to a little girl</p>\r\n<p class="p1" style="text-align: justify;"><strong>Skyshale033<br /></strong><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">YES! Okay I''m not crazy! I remember Pirate Percy. I was always kind of scared of him. He looked like he was built from parts of other dolls, real low-budget. His head was an old porcelain baby doll, looked like an antique that didn''t belong on the body. I don''t remember what station this was! I don''t think it was WTSF though.</p>\r\n<p class="p1" style="text-align: justify;"><strong>Jaren_2005</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">Sorry to ressurect this old thread but I know exactly what show you mean, Skyshale. I think Candle Cove ran for only a couple months in ''71, not ''72. I was 12 and I watched it a few times with my brother. It was channel 58, whatever station that was. My mom would let me switch to it after the news. Let me see what I remember.</p>\r\n<p class="p1" style="text-align: justify;">It took place in Candle cove, and it was about a little girl who imagined herself to be friends with pirates. The pirate ship was called the Laughingstock, and Pirate Percy wasn''t a very good pirate because he got scared too easily. And there was calliope music constantly playing. Don''t remember the girl''s name. Janice or Jade or something. Think it was Janice.</p>\r\n<p class="p1" style="text-align: justify;"><strong>Skyshale033</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">Thank you Jaren!!! Memories flooded back when you mentioned the Laughingstock and channel 58. I remember the bow of the ship was a wooden smiling face, with the lower jaw submerged. It looked like it was swallowing the sea and it had that awful Ed Wynn voice and laugh. I especially remember how jarring it was when they switched from the wooden/plastic model, to the foam puppet version of the head that talked.</p>\r\n<p class="p1" style="text-align: justify;"><strong>mike_painter65</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">ha ha i remember now too. ;) do you remember this part skyshale: "you have&hellip;to go&hellip;INSIDE."</p>\r\n<p class="p1" style="text-align: justify;"><strong>Skyshale033</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">Ugh mike, I got a chill reading that. Yes I remember. That''s what the ship always told Percy when there was a spooky place he had to go in, like a cave or a dark room where the treasure was. And the camera would push in on Laughingstock''s face with each pause. YOU HAVE... TO GO... INSIDE. With his two eyes askew and that flopping foam jaw and the fishing line that opened and closed it. Ugh. It just looked so cheap and awful.</p>\r\n<p class="p1" style="text-align: justify;">You guys remember the villain? He had a face that was just a handlebar mustache above really tall, narrow teeth.</p>\r\n<p class="p1" style="text-align: justify;"><strong>kevin_hart</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">i honestly, honestly thought the villain was pirate percy. i was about 5 when this show was on. nightmare fuel.</p>\r\n<p class="p1" style="text-align: justify;"><strong>Jaren_2005</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">That wasn''t the villain, the puppet with the mustache. That was the villain''s sidekick, Horace Horrible. He had a monocle too, but it was on top of the mustache. I used to think that meant he had only one eye.</p>\r\n<p class="p1" style="text-align: justify;">But yeah, the villain was another marionette. The Skin-Taker. I can''t believe what they let us watch back then.</p>\r\n<p class="p1" style="text-align: justify;"><strong>kevin_hart</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">jesus h. christ, the skin taker. what kind of a kids show were we watching? i seriously could not look at the screen when the skin taker showed up. he just descended out of nowhere on his strings, just a dirty skeleton wearing that brown top hat and cape. and his glass eyes that were too big for his skull. christ almighty.</p>\r\n<p class="p1" style="text-align: justify;"><strong>Skyshale033</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">Wasn''t his top hat and cloak all sewn up crazily? Was that supposed to be children''s skin??</p>\r\n<p class="p1" style="text-align: justify;"><strong>mike_painter65</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">yeah i think so. rememer his mouth didn''t open and close, his jaw just slid back and foth. i remember the little girl said "why does your mouth move like that" and the skin-taker didn''t look at the girl but at the camera and said "TO GRIND YOUR SKIN"</p>\r\n<p class="p1" style="text-align: justify;"><strong>Skyshale033</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">I''m so relieved that other people remember this terrible show!</p>\r\n<p class="p1" style="text-align: justify;">I used to have this awful memory, a bad dream I had where the opening jingle ended, the show faded in from black, and all the characters were there, but the camera was just cutting to each of their faces, and they were just screaming, and the puppets and marionettes were flailing spastically, and just all screaming, screaming. The girl was just moaning and crying like she had been through hours of this. I woke up many times from that nightmare. I used to wet the bed when I had it.</p>\r\n<p class="p1" style="text-align: justify;"><strong>kevin_hart</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">i don''t think that was a dream. i remember that. i remember that was an episode.</p>\r\n<p class="p1" style="text-align: justify;"><strong>Skyshale033</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">No no no, not possible. There was no plot or anything, I mean literally just standing in place crying and screaming for the whole show.</p>\r\n<p class="p1" style="text-align: justify;"><strong>kevin_hart</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">maybe i''m manufacturing the memory because you said that, but i swear to god i remember seeing what you described. they just screamed.</p>\r\n<p class="p1" style="text-align: justify;"><strong>Jaren_2005</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p class="p1" style="text-align: justify;">Oh God. Yes. The little girl, Janice, I remember seeing her shake. And the Skin-Taker screaming through his gnashing teeth, his jaw careening so wildly I thought it would come off its wire hinges. I turned it off and it was the last time I watched. I ran to tell my brother and we didn''t have the courage to turn it back on.</p>\r\n<p class="p1" style="text-align: justify;"><strong>mike_painter65</strong><br /><strong>Subject: Re: Candle Cove local kid''s show?</strong></p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p class="p1" style="text-align: justify;">i visited my mom today at the nursing home. i asked her about when i was littel in the early 70s, when i was 8 or 9 and if she remebered a kid''s show, candle cove. she said she was suprised i could remember that and i asked why, and she said "because i used to think it was so strange that you said ''i&rsquo;m gona go watch candle cove now mom'' and then you would tune the tv to static and just watch dead air for 30 minutes. you had a big imagination with your little pirate show."</p>', 1, 3, 1477256760),
(24, 'Mother''s Call', '<p>A young girl is playing in her bedroom when she hears her mother call to her from the kitchen, so she runs downstairs to meet her mother.</p>\r\n<p>As she''s running through the hallway, the door to the cupboard under the stairs opens, and a hand reaches out and pulls her in. It''s her mother. She whispers to her child, "Don''t go into the kitchen. I heard it too."</p>', 1, 2, 1477256877),
(25, 'Bedtime Story', '<p>I begin tucking him into bed and he tells me, "Daddy, check for monsters under my bed." I look underneath for his amusement and see him, another him, under the bed, staring back at me quivering and whispering, "Daddy there&rsquo;s somebody on my bed."</p>', 1, 2, 1477257081),
(26, 'Never look up', '<p>Don''t be scared of the monsters, just look for them. Look to your left, to your right, under your bed, behind your dresser, in your closet but never look up, she hates being seen.</p>', 1, 2, 1477257131),
(27, 'My daughter learned how to count', '<p>My daughter woke me around midnight&nbsp;last night. My wife and I had picked her up from her friend Esme''s birthday party, brought her home, and put her to bed. My wife went into the bedroom to read while I fell asleep watching the cricket.</p>\r\n<p>"Daddy," she whispered, tugging my shirt sleeve. "Guess how old I''m going to be next month."</p>\r\n<p>"I don''t know, sweetheart," I said as I slipped on my glasses. "How old?"</p>\r\n<p>She smiled and held up four fingers.</p>\r\n<p>It is 7.30 now. My wife and I have been up with her for almost 8 hours. She still refuses to tell us where she got them from.</p>', 1, 2, 1477257823),
(28, 'The Trap', '<p>In Berlin, after World War II, money was short, supplies were tight, and it seemed like everyone was hungry. At that time, people were telling the tale of a young woman who saw a blind man picking his way through a crowd. The two started to talk. The man asked her for a favor: could she deliver the letter to the address on the envelope? Well, it was on her way home, so she agreed.</p>\r\n<p>She started out to deliver the message, when she turned around to see if there was anything else the blind man needed. But she spotted him hurrying through the crowd without his smoked glasses or white cane. She was, naturally, suspicious, so she went to the police.</p>\r\n<p>When the police paid a visit to the address on the envelope, they made a gruesome discovery, three butchers had been harvesting human flesh and selling it to the starving people.</p>\r\n<p>And what was in the envelope the man gave to the woman? A note, saying simply "This is the last one I am sending you today."</p>', 1, 3, 1477259804),
(29, 'The Never-ending Road', '<p style="text-align: justify;">In Corona, California there once was a road known by most locals as the Never-ending Road. Specifically, the road''s true name was Cedar&nbsp;Road. Now, over twenty years later, the landscape of Corona has changed, and the Never-ending Road is no more. However, years ago, Cedar&nbsp;Road was an unlit road that people claimed became a never-ending road when driven at night. The people who made such a drive were never seen from again.</p>\r\n<p style="text-align: justify;">The legend became so well-known that people refused to even drive Cedar&nbsp;Road during the day. One night, like many teens my age, I drove up Cedar&nbsp;Road, but only a short distance, and in my headlights it did look like it went on forever. Frightened, I quickly turned around, because if I continued up the road, I thought I might never return again.</p>\r\n<p style="text-align: justify;">Perpetuation of the legend convinced local law enforcement to investigate. Cedar&nbsp;Road took a sharp left turn at its end, and there were no guard rails. Beyond the curve lay a canyon, and on the other side of the canyon was another road that lined up so well with Cedar&nbsp;Road that when viewed from the correct angle, especially at night, the canyon vanished from sight, and the road seemed to continue on up and over the hill on the other side of the canyon. Upon investigation of the canyon, dozens of cars were found, fallen to their doom, with the bodies of the victims still strapped to their seats.</p>', 1, 1, 1477260428),
(30, 'Untitled', '<p>One day, when I was waiting for the train to go to work, I noticed a homeless man standing in a corner of the station, muttering to himself as people passed by. He was holding out a cup and seemed to be begging for spare change. A large&nbsp;woman passed by the homeless man and I distinctly heard him say, ''Pig.'' Wow, I thought to myself. This homeless man is insulting people and he still expects them to give him money? Then a tall businessman went by and the homeless guy muttered, ''Human.'' Human? I can&rsquo;t argue with that. Obviously, he was human. The next day, I arrived early at the station and had some time to kill, so I decided to stand close to the homeless man and listen to his strange mutterings.</p>\r\n<p>A thin, haggard-looking man passed in front of him and I heard the homeless guy mutter, ''Cow.'' Cow? I thought. The man was much too skinny to be a cow. He looked more like a turkey or a chicken to me. A minute or so later, a fat man went by and the homeless man said, ''Potato.'' Potato? I was under the impression that he called all fat people ''Pig''.</p>\r\n<p>That day, at work, I couldn&rsquo;t stop thinking about the homeless man and his puzzling behavior. I kept trying to find some logic or pattern in what he was muttering. Perhaps he has some kind of psychic ability, I thought. Maybe he knows what these people were in a previous life. I observed the homeless man many times and began to think my theory was right. I often heard him calling people things like ''Rabbit'' or ''Onion'' or ''Sheep'' or ''Tomato''.</p>\r\n<p>One day, curiosity got the better of me and I decided to ask him what was going on. As I walked up to him, he looked at me and said ''Bread.'' I tossed some money into his cup and asked him if he had some kind of psychic ability. The homeless man smiled and said, ''Yes, indeed. I do have a psychic ability. It is an ability I obtained years ago. But it is not what you might expect. I can&rsquo;t tell the future or read minds or anything like that.'' ''Then what is your ability?'' I asked eagerly. ''The ability is merely to know the last thing somebody ate.'' he said.</p>\r\n<p>I laughed because I realized he was right. He said ''Bread.'' The last thing I had eaten for breakfast that day was toast. I walked away shaking my head. Of all the psychic abilities someone could have, that one must be the most useless.</p>', 1, 3, 1477260968);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `role`, `email`) VALUES
(1, 'erika', '$2y$10$76I36vmVfBHLogQY.6lWuOFrxWmXDU/mYf4ITtbWqS92mhXnIESVy', 'Erika Braverman', 1, 'erikab922@gmail.com'),
(2, 'regina', '$2y$10$kbkJroSzdUuTLTbj0AnFle0/MjlBM8t448uG8NkYauQIETSik6IZO', 'Regina Phalange', 2, 'erikab922@yahoo.co.uk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
    ADD CONSTRAINT `author` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
