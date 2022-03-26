-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2022 at 03:01 PM
-- Server version: 10.3.32-MariaDB-log-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `extrysdu_mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `advert`
--

CREATE TABLE `advert` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `add_text` varchar(1500) NOT NULL,
  `ufile` varchar(1500) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` int(1) NOT NULL DEFAULT 0,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advert`
--

INSERT INTO `advert` (`id`, `user_id`, `add_text`, `ufile`, `date`, `status`, `category`) VALUES
(1, 'Sonaref', 'some rubish in here', '1349instagram-followers.png', '2021-03-05 15:58:56.378640', 1, 'Computer & IT'),
(2, 'mnu86123', 'some rubbish here and now', '609901.png', '2021-06-10 15:14:13.723109', 2, 'Computer & IT'),
(3, 'splash2021', 'please join our platform ', '4837bg2.jpg', '2021-05-30 19:01:03.970382', 1, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `affiliateuser`
--

CREATE TABLE `affiliateuser` (
  `Id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `fname` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `referedby` varchar(15) NOT NULL DEFAULT 'none',
  `ipaddress` int(10) UNSIGNED NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `active` int(11) NOT NULL,
  `doj` date NOT NULL,
  `country` text NOT NULL,
  `tamount` double NOT NULL DEFAULT 0,
  `payment` varchar(10) NOT NULL,
  `signupcode` text NOT NULL,
  `level` int(1) NOT NULL DEFAULT 2,
  `pcktaken` int(10) NOT NULL DEFAULT 0,
  `launch` int(1) NOT NULL DEFAULT 0,
  `expiry` date NOT NULL DEFAULT '2199-12-31',
  `bankname` varchar(250) NOT NULL DEFAULT '0',
  `accountname` varchar(250) NOT NULL DEFAULT 'nil',
  `accountno` varchar(10) NOT NULL DEFAULT 'nil',
  `accounttype` varchar(40) NOT NULL DEFAULT 'nil',
  `ifsccode` varchar(100) NOT NULL DEFAULT 'Not Available',
  `welcome_spin` tinyint(4) DEFAULT 0,
  `getpayment` int(11) NOT NULL DEFAULT 1,
  `renew` int(1) NOT NULL DEFAULT 0,
  `CheckoutRequestID` varchar(26) NOT NULL,
  `last_spin_at` timestamp NULL DEFAULT current_timestamp(),
  `trx_pin` int(11) NOT NULL,
  `userstatus` int(11) NOT NULL,
  `session` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `affiliateuser`
--

INSERT INTO `affiliateuser` (`Id`, `username`, `password`, `fname`, `address`, `email`, `referedby`, `ipaddress`, `mobile`, `active`, `doj`, `country`, `tamount`, `payment`, `signupcode`, `level`, `pcktaken`, `launch`, `expiry`, `bankname`, `accountname`, `accountno`, `accounttype`, `ifsccode`, `welcome_spin`, `getpayment`, `renew`, `CheckoutRequestID`, `last_spin_at`, `trx_pin`, `userstatus`, `session`) VALUES
(40, 'adminadmin', '123123123', 'Kiprono koech', '1234', 'admin@earnpro.co.ke', 'none', 0, 254720250220, 1, '0000-00-00', 'Country', 1267, '', '0', 1, 1, 1, '2024-07-19', 'Not Available', 'Not Available', '0', '0', 'Not Available', 0, 1, 0, '0', '2021-05-31 02:59:01', 0, 0, 0),
(86, 'SuperAdmin', 'Spacex', 'Admin superior', 'France Address', 'adminmin@gmail.com', 'adminadmin', 0, 9999999999, 1, '2015-09-19', 'India', 11301, '', '1284892893', 2, 17, 1, '2018-06-14', 'Not Available', 'Not Available', '0', '0', 'Not Available', 0, 1, 1, '0', '2021-05-31 02:59:01', 0, 0, 0),
(141, 'Hellen', 'Tasmil23', 'Hellen okileje', '', 'ellenanyango@gmail.com', 'SuperAdmin', 1712808464, 254112244336, 1, '2021-06-09', 'Kenya', 550, '', '8314972983', 2, 19, 1, '2021-06-09', 'Not Available', 'Not Available', '0', '0', 'Not Available', 0, 1, 0, '', '2021-06-09 09:28:55', 1234567, 1, 1),
(134, 'Kipletting', '87654321', 'Kipleting rono', '6666', 'kipletting@gmail.com', 'murimi2021', 693781561, 254719690370, 1, '2021-06-09', 'Kenya', 1309680, '', '6331941257', 2, 19, 1, '2021-06-09', 'First Bank Plc', 'Adesida Deji', '008978667', 'Savings', 'Not Available', 0, 1, 0, 'ws_CO_09062021080914953140', '2021-06-09 05:08:33', 131210, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `airtime`
--

CREATE TABLE `airtime` (
  `id` int(11) NOT NULL,
  `network` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `status` varchar(2) NOT NULL DEFAULT '0',
  `user_id` varchar(200) NOT NULL,
  `ufile` varchar(1500) NOT NULL,
  `mpesa` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airtime`
--

INSERT INTO `airtime` (`id`, `network`, `amount`, `date`, `status`, `user_id`, `ufile`, `mpesa`) VALUES
(34, 'Safaricom', '50', '2021-06-12 06:51:57.927771', '0', 'Farida', '', '2851'),
(8, 'Safaricom', '1000', '2021-03-09 17:17:35.696825', '2', 'mnu86123', '9621', ''),
(9, 'Safaricom', '1000', '2021-03-11 20:13:58.725020', '2', 'mnu86123', '6907Dfduilashdohdahdoihhsxa.docx', ''),
(33, 'Safaricom', '10', '2021-06-11 20:05:53.798660', '2', 'sharon', '', '5690045'),
(32, 'Safaricom', '10', '2021-06-11 18:41:21.339777', '2', 'Kipngetichbett', '', 'PFB1ZHIIW1'),
(31, 'Safaricom', '50', '2021-06-11 18:41:25.739335', '2', 'steveamo4', '', '5690045'),
(30, 'Safaricom', '200', '2021-06-10 08:19:50.333026', '2', 'lucifer', '', 'none'),
(29, 'Safaricom', '20', '2021-06-10 08:19:42.846430', '1', 'Ngasharr', '', 'PF95XUW77L'),
(28, 'Safaricom', '20', '2021-06-10 08:19:58.919848', '2', 'sharon', '', '5690045'),
(27, 'Safaricom', '10', '2021-06-10 08:30:37.254883', '2', 'LauraMackenzie', '', '2628'),
(26, 'Safaricom', '10', '2021-06-10 08:30:51.485350', '2', 'Allanoh', '', '1999'),
(24, 'Safaricom', '15', '2021-06-09 15:33:13.420412', '2', 'Omollo254', '', '2017'),
(23, 'Safaricom', '20', '2021-06-09 15:32:57.288000', '2', 'Danson', '', '0743641209'),
(25, 'Safaricom', '20', '2021-06-10 08:30:57.272615', '2', 'earnwithme', '', '0710113662'),
(22, 'Safaricom', '1000', '2021-06-09 15:32:39.756424', '2', 'kiprono00', '', 'Hhdhshehege'),
(35, 'Safaricom', '10', '2021-06-13 07:42:49.432745', '0', 'Markdarius', '', '2433'),
(36, 'Safaricom', '50', '2021-06-13 10:54:35.442057', '0', 'Joygacheri', '', '5245'),
(37, 'Safaricom', '40', '2021-06-15 19:03:38.354181', '0', 'Mosemosesi', '', 'PFF273ID38'),
(38, 'Safaricom', '200', '2021-06-16 00:49:14.245862', '0', 'Mosemosesi', '', 'PFE15NLVZB'),
(39, 'Safaricom', '40', '2021-06-16 16:36:08.153090', '0', 'Mosemosesi', '', 'PFG189CZOD'),
(40, 'Safaricom', '40', '2021-06-16 16:39:57.626885', '0', 'Mosemosesi', '', 'PFG789NI77'),
(41, 'Safaricom', '500', '2021-06-17 22:01:07.629526', '0', 'Kipletting', '', 'sasgdfgjghh'),
(42, 'Safaricom', '10', '2021-06-28 11:52:54.022120', '0', 'Kipletting', '', 'fewnefdgghr');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `body` varchar(2500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 2,
  `ufile` varchar(1500) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `user_id`, `title`, `body`, `status`, `ufile`, `date`) VALUES
(18, 'Dennis', 'DO NOT LOOK DOWN ON ANYONE', '<h6>DON\'T EVER LOOK DOWN ON ANY ONE! <br><br>Life is a string of connections and we are all members of one vast network. We are connected but just at different locations. When one member is hurt or dead, something happens to this network however small that member seems. The network reacts.<br><br>I learnt a big lesson this last week. I had a seemingly little boil that got my whole body weakened. Yeah, it seemed little from the outside but it was so powerful as to change the way I walk and work. What I\'m actually stressing is that \"even little\" matters.<br><br>We all matter in this ecosystem called life. We may not have the same strength, capacity or will power but we are playing supportive roles for each other even when you don\'t know me. A failure for one could result in a failure for all.<br><br>Everyone won\'t be strong, powerful or audacious. Some persons are designed to be weak but their seemingly weak roles play an important part in completing the puzzle.<br><br>Don\'t look down on anyone except of course you are wanting to pull them up. That seemingly less important person is playing a role for you and for life that you may never be able to play by yourself. In life importance is not define by size or influence. We need both the big and the small, the rich and the poor, the strong and the weak, the good and the bad.<br></h6>', 1, '', '2021-06-09 07:20:01.211351'),
(19, 'Kelphins', 'Exploring nature', '<p>Am kelphins, i like walking around to explore nature\'s beauty as its oneof my greatest hobby. Nature is everything that i couldn\'t go without doing any revisit, enjoy and discover new places.</p>', 0, '', '2021-06-09 07:24:33.819601'),
(20, 'Danson', 'We earn', '<p>Join and start earning real cash</p>', 0, '', '2021-06-09 07:57:04.013253'),
(21, 'Dianah', 'IT ONLY TAKES DETERMINATION', '<p><b></b>Sometimes things may not seem to flow in the direction we want them to flow. Everyone in life has an ambition, dream or a desire they want so much to achieve. But the big question is how many people achieve this?Are you just living a dream or have your made your dream a reality?</p><p>All you need is a drive. Just a little push to get you started.The thing that hinders us from hitting our target is fear and that is why we feel like we can\'t do it.But when we confess in our mind that we can do it and we become determined to go for want we want no matter all odds then we can break the barrier because it only takes determination&nbsp;</p>', 1, '', '2021-06-09 08:14:13.186690'),
(22, 'Dennis', 'SEX AND FASTING', '<h6>*SEX AND FASTING* <br><br>&nbsp; <br>â€‹ *Episode 1â€‹â€‹* <br><br>As soon as I cleared out the dinner table, I went into the bedroom, not bothering to say goodnight to Kenny in the living room. I knew he was going to be coming to bed soon enough. I needed him to think I was fast asleep by the time he came to bed. I quickly got into the bathroom and had a quick shower before climbing into bed... <br><br>I made sure I put on my long pyjamas so there was no way he could have easy access to my body. About an hour later when I heard him climb into bed and turn the other way, I finally let out the breath I was holding. I managed to escape the sex tonight...<br><br>By the time I woke up the next morning, I knew we were going to have another round of noise and fight and I quickly said a silent prayer to God for strength. I could feel his hand roaming round my body relentlessly and there was no doubt in my mind what the expected end result to be. I opened my eyes and took a glimpse at the clock on the wall. It was just 6.am. I turned and removed his hands from my body and tried to get up only to be pulled back. By the third time of going through the same motion, he finally spoke up...<br>I<br>\'\'Babe, what is the excuse today? It has been 2 weeks for Christ sake. How am I supposed to be happy if you won\'t even have sex with me?\'\' He said with obvious frustration in his voice...<br><br>\'\'So your happiness is now tied to sex? You still don\'t get it do you? I am doing this for us. For our home and our future. I told you before I started that this was going to happen and you agreed and now you want to make me feel guilty. Seriously I am confused...\'\'<br><br>\'\'Omololami, you know I am not opposed to prayer and fasting. I love God too and I go to church but you cannot honestly expect me not to have sex for the next 100 days just because you want to fast...\'\'<br><br>I was so angry at that statement and I flared up,<br><br>\'\'Seriously Kenny, are you kidding me right now? What happened to self control? This just shows how far you have fallen from the faith. Is this not the same you that used to fast with me all the time before we got married? So all that spirituality was a lie? Did we not court for two years without sex? So you must have been cheating on me...\'\'<br><br>\'\'What? How can you say that? Are you crazy? How can you even compare both scenarios? I was single then now I am married. Why did I get married if I can\'t have sex...?\'\'<br><br>\'\'Oh so now I am a sex mach', 0, '', '2021-06-09 08:47:29.979053'),
(23, 'Dennis', 'Earnpro agencies', '<h5>Welcome to Earnpro Agencies, join our earning platform by simply paying a one time package of Ksh. 200. Here you earn as much as you can. Get paid for Smartquizzes, blogging, article writing, Spin and win and stand a chance to win up to 100 times your stake.Invite a friend and earn on two levels: 100,50, Don\'t miss the great opportunity available.<br>ðŸ”Ž *VARIOUS WAYS TO EARN:* <br> *1ï¸âƒ£ &nbsp; REFERRAL BONUSESðŸ’ŽðŸ‘¥* <br>LEVEL 1 =KSH 100<br>LEVEL 2 =KSH 50<br><br> *2ï¸âƒ£  ðŸ“BLOGGING* .<br>Write exemplary blogs and get paid instantly  ðŸ¤‘<br><br> *3ï¸âƒ£  ðŸ¤©Buy AirtimeðŸ“±* <br>Get 15% commission for every Airtime you Buy.<br><br>4ï¸âƒ£. *Article writing* .ðŸ“–ðŸ“ <br>Standing  out articles awarded commissions ðŸ’°<br> *5ï¸âƒ£.  Earnpro spin.* âŒ›â³<br>All users will enjoy the following categories of spin wheels.<br>i) &nbsp; *Welcome spin* (available after registration ) Guaranteed win <br>ii) &nbsp; *Free spins* (Available at specific times scheduled)<br>iii) *Lucky Spin* (Available all times)<br>5ï¸âƒ£ ADVERTS<br>Advertise with us , grow with us.<br>6ï¸âƒ£ Online Resources<br>Free free  ebooks and other useful online resources available <br> 1. *Instant withdrawal to yourMpesa* <br>2 *. Direct contact to our customer care  desk* ðŸ–¥<br><a target=\"_blank\" rel=\"nofollow\" href=\"https://earnpro.co.ke/signup.php?aff=Dennis\">https://earnpro.co.ke/signup.php?aff=Dennis</a> Register nowðŸ’¸ðŸ’¸ðŸ’¸<br><br>Registration is FreeðŸ†“ Account Activation is Ksh.200<b><u></u></b><br></h5>', 1, '', '2021-06-09 08:51:12.272888'),
(24, 'Dianah', 'A STEP AT A TIME', '<p>It always comes a time when we need to make decisions. The decisions we make comes as a result of what we feel is right or maybe sometimes what we have seen others do and the outcome of it.</p><p>Making a decision might not always be as easy as it seems. Sometimes we are often fall under pressure and we end up making a decision out of a rush. And this isn\'t just right because due to this we end up going for what is urgent and leaving out what is important.</p><p>If you ever find yourself in need to make a decision, it\'s advisable to take your time and consider both ends of what you are about to go for inconsiderate of what people say or the pressure they exert in you because at the end of the day the decisions we make have an impact. It just takes a time at a time and a sobber mind.</p>', 1, '', '2021-06-09 08:52:22.906861'),
(25, 'Dennis', 'ARE YOU FEARLESSNESS OR BRAVE', '<h6>Are you fearless or brave? <br>There\'s a huge difference between being fearless and <br>being brave. Being brave is often quite admirable, <br>especially when you are standing up for a principle <br>despite what everyone thinks.<br>But being brave means you are still overriding and <br>overcoming a fear, so there\'s battle inside. Being fearless <br>is very different. Being fearless means there is no battle. <br>Just relaxed focus. <br> This is the very reason why the samurai taught their <br>warriors to â€œdie before going into battleâ€â€”so that they <br>wouldn\'t have to be brave in battle, but could be playful, <br>freewheeling and fearless. They were less likely to die <br>that way.<br>Most people have confusion about the word <br>â€œfearless.â€ They think fearless means â€œbraveâ€ or <br>â€œcourageous,â€ but itâ€™s nothing like that. <br>In fact itâ€™s not even similar to that. Being fearless is <br>absolute peace. It suggests an easy connection to the <br>universe. And thereâ€™s no worry. Thereâ€™s no feeling of <br>fear whatsoever.<br></h6>', 0, '', '2021-06-09 09:28:48.939196'),
(26, 'Dennis', 'NOW, IT\'S OVER TO YOU!', '<h5>NOW, IT\'S OVER TO YOU!<br><br>We feel down and depressed when a close family, friend  or acquaintance dies. You know that pain, that loss, that feeling of emptiness that a gap has revealed itself and has to be filled. It\'s tough losing dear people especially at the time when you need them most. But that\'s what the race of life is about. You can\'t go beyond your role. Life is a relay, once you finish your part, leave the race for others to run.<br><br>After God\'s Servant T B Joshua died and every one got talking about his good side and especially his difficult to understand  side, I realized how unfortunate he was to have lived a misunderstood life and he had to play that role so that many others could be understood. He came, he did his part and he is gone! And he threw down his baton.<br><br>Everyone including you is carrying a baton. Every day when people die, they give up their batons for others coming after them. You may not see a physical stick in your hands, but something has been handed down to you. Nothing returns back to God except the soul. All the dreams are left down here for others to find relevance in and to continue to pursue.<br><br>Those who have gone before us will be looking down at us watching how we\'ve done with the marks that they helped us set. They are watching to see you play your own role for life. If they can talk to you, they\'d tell you NOW IT\'S YOUR TURN.<br><br>All you have to do now, please do. You are still alive because you are carrying something valuable for now, when you close your eyes to this side of life, you can\'t change anything. Now, it\'s over to you!<br><br></h5>', 0, '', '2021-06-09 09:33:05.846726'),
(27, 'Dennis', 'WELL BEGUN IS HALF DONE', '<p><b>Well begun is half done&nbsp;</b></p><h6><b><br></b>The beginning is half of every action.<br>Greek proverb<br>The problem with procrastination is that there\'s no <br>beginning going on. If there were a beginning happening <br>there would be no procrastination.<br>Our problem isnâ€™t that we donâ€™t do something. Itâ€™s <br>that we donâ€™t begin it. Maybe because we are believing <br>something negative about the task we are putting off, we <br>donâ€™t begin. If we were not believing that belief we\'d <br>have already begun!<br>Poor time management, therefore, is always a problem <br>of belief. What thought am I believing about this task that <br>makes me unwilling to even start? Unless I am willing to <br>challenge that thought quite thoroughly I will always <br>suffer from this thing we call procrastination.<br>Remember that there are two ways a warrior can <br>execute a successful challenge. One is internal, one is <br>external. Internal: Write the belief down and thoroughly <br>challenge its truth. External: Push the thought aside, push all thought aside,and just start the darn thing whether you feel like doing it or not<br></h6>', 1, '', '2021-06-09 10:07:53.562032'),
(28, 'Gloire', 'Vitendawili', '', 0, '', '2021-06-09 10:51:19.887137'),
(29, 'Gloire', '', '<h2>Nyumba yangu aina dirisha wala mlago jibu ni ?</h2>', 0, '', '2021-06-09 10:52:25.978541'),
(30, 'Gloire', 'Vitendawili', '<p>Nyumbani yangu Haina dirisha wala mlago?</p>', 0, '', '2021-06-09 10:53:05.111973'),
(31, 'Dennis', 'WHY AM I ALWAYS CHOOSING UNAVAILABLE LOVE PARTNERS?', '<h5><b>Why am I always choosing </b><br><b>unavailable love partners?</b> <br>Yes, why are you? I canâ€™t imagine a greater time waster! <br>Not to mention passion-waster, love-waster and <br>life-waster.<br>Our society and its various forms of entertainmentâ€”<br>movies, novels, and so onâ€”romanticize forbidden <br>pleasures and illicit sexual affairs at the expense of true <br>intimacy and faithful love. <br>We buy those exciting stories and start thinking that <br>true romantic adventure can only be found down a dark, <br>forbidden hallway. We say childish things like â€œThe heart <br>wants what it wants.â€ Soon we are exciting ourselves <br>over secret ecstasies and other self-defeating mind <br>games. All made up to fill the void of an unfulfilling life. <br>Until, finally, as you can verify, it leads to way too <br>much pain and sadness. Which it always does. But only <br>every time, which is a bit of a sign from the universe that <br>maybe we are on the wrong path.<br></h5>', 0, '', '2021-06-09 11:01:28.437606'),
(32, 'Dennis', 'WHAT IF I DON\'T HAVE  A LIFE PURPOSE?', '<h6><b>What if I donâ€™t have a life purpose? </b><br>Help some people! Get into action. Get involved. Your <br>lifeâ€™s purpose canâ€™t always be â€œfigured outâ€ in advance. <br>In fact, trying so hard to figure it out and figure out what <br>purpose label fits you will often keep you from your <br>lifeâ€™s purpose. <br>Purpose, in my experience, gets discovered in the <br>heart while youâ€™re on the wing, when the heart is <br>pumping and you are soaring. You donâ€™t see it ahead of <br>time; you look back over your shoulder and there it isâ€¦ <br>trying to catch up with you! So fly.<br>And be flexible as you fly. Swing and expand. Limber <br>up as you rise up. Dance through the clouds, sing and <br>have some fun. Let success find you based on your <br>incredible energy for serving. Donâ€™t chase it. It will <br>always run from you. If you catch yourself chasing, turn <br>around and fly in the other direction. Watch it try to catch <br>you<br></h6>', 0, '', '2021-06-09 11:04:35.698173'),
(33, 'Jsilver', 'Me', '<p>Keep struggling&nbsp;my friend&nbsp;<b></b>ð•€ ð”¹ð•–ð•ð•–ð•šð•§ð•– ð•¥ð•™ð•’ð•¥ ð”¸ð•—ð•¥ð•–ð•£ ð•¥ð•™ð•– ð••ð•’ð•£ð•œ ð•¥ð•™ð•– ð•¤ð•¦ð•Ÿ ð•¨ð•šð•ð• ð•¤ð•¥ð•šð•ð• ð•¤ð•™ð•šð•Ÿð•–...</p>', 0, '', '2021-06-09 11:13:29.316928'),
(34, 'Dennis', 'DON\'T MY GOALS TIE ME TO THE FUTURE?', '<h6><b>Donâ€™t my goals tie me to the future</b>? <br>The more seriously you regard your deadlines and the<br>more you keep your word on meeting your deadlines, the <br>stronger you get internally. The higher your self-esteem <br>becomes. The more you trust yourself.<br>If certain â€œgoalsâ€ scare you (tie you to the future, <br>same thing) donâ€™t use them. Keep re-writing them until <br>they excite you. Goals are tools. They serve you. If they <br>donâ€™t, use another tool. I wouldnâ€™t use a machine gun for <br>pest control. I might try it once, but Iâ€™d probably choose <br>something else after that. <br>An outcome goal is just a game you make up. You <br>donâ€™t always win. Thatâ€™s actually what makes it fun. The <br>possibility of losing. You can be very sincere about the <br>game without being too serious.<br>Trust yourself. If an outcome goal doesnâ€™t serve you, <br>drop it. But a commitment is different. A commitment is <br>an internal promise you have made to yourself. I would <br>not drop those. And I wouldnâ€™t make them casually.<br>Short-term doable process goals keep you focused. <br>They insure action. Thatâ€™s why they are so effective at <br>carrying you forward. Create a structure for yourself. <br></h6>', 0, '', '2021-06-09 11:29:36.382976'),
(35, 'Dennis', 'DON\'T MY GOALS TIE ME TO THE FUTURE?', '<h6><b>Donâ€™t my goals tie me to the future</b>? <br>The more seriously you regard your deadlines and the<br>more you keep your word on meeting your deadlines, the <br>stronger you get internally. The higher your self-esteem <br>becomes. The more you trust yourself.<br>If certain â€œgoalsâ€ scare you (tie you to the future, <br>same thing) donâ€™t use them. Keep re-writing them until <br>they excite you. Goals are tools. They serve you. If they <br>donâ€™t, use another tool. I wouldnâ€™t use a machine gun for <br>pest control. I might try it once, but Iâ€™d probably choose <br>something else after that. <br>An outcome goal is just a game you make up. You <br>donâ€™t always win. Thatâ€™s actually what makes it fun. The <br>possibility of losing. You can be very sincere about the <br>game without being too serious.<br>Trust yourself. If an outcome goal doesnâ€™t serve you, <br>drop it. But a commitment is different. A commitment is <br>an internal promise you have made to yourself. I would <br>not drop those. And I wouldnâ€™t make them casually.<br>Short-term doable process goals keep you focused. <br>They insure action. Thatâ€™s why they are so effective at <br>carrying you forward. Create a structure for yourself. <br></h6>', 1, '', '2021-06-09 11:34:36.544787'),
(36, 'Gitonga', 'Prayer works', '<p>Prayer is the only way to approach God in our daily lives</p><p><br></p>', 1, '', '2021-06-09 11:38:11.333004'),
(37, 'Dianah', 'I AM THE CHANGE', '', 0, '', '2021-06-09 11:45:18.610827'),
(38, 'Dianah', 'I AM THE CHANGE', '<p>It\'s inconsiderate how we push people to carry out the task they know we\'ll they are supposed to handle.</p><p>How many times do we have to bear the cases of corruption , rape , robbery among other unutterable crimes .We are the same people making life unbearable for our own kind.</p><p>We have become our own enemies in every way possible. But all this can change. Yes it can if only we take individual responsibility to our own actions.</p><p>If we can see every girl out there as our sisters and daughters, every woman as our mothers and wives and every man as either a brother, father or son then the world would be the best place to live. Change begins with you</p>', 0, '', '2021-06-09 11:54:14.965577'),
(39, 'Dianah', 'I AM THE CHANGE', '<p>It\'s inconsiderate how we push people to carry out the task they know we\'ll they are supposed to handle.</p><p>How many times do we have to bear the cases of corruption , rape , robbery among other unutterable crimes .We are the same people making life unbearable for our own kind.</p><p>We have become our own enemies in every way possible. But all this can change. Yes it can if only we take individual responsibility to our own actions.</p><p>If we can see every girl out there as our sisters and daughters, every woman as our mothers and wives and every man as either a brother, father or son then the world would be the best place to live. Change begins with you</p>', 0, '', '2021-06-09 11:54:49.571132'),
(40, 'Dennis', 'HOW DO I DEAL WITH MY EGO?', '<h6><b></b>How do I deal with my ego?<b></b> <br>If you have a healthy egoâ€”designed by you for <br>successful interaction with society and other egosâ€”you <br>can use it consciously to achieve goals and keep <br>commitments. You can also preserve your spirit and soul <br>in the process, being in this world but not of it.<br>Healthy egos are built with healthy self-esteem. To <br>not keep a commitment to yourself lowers your selfï¿¾esteem and self-trust. So practice keeping them. All it <br>takes is practice.<br>People often struggle with their self-esteem. If you <br>struggle, it is not useful to believe you lack some good <br>quality. Like an inability to focus for a long time or an <br>undisciplined personality. <br>Itâ€™s not discipline that you struggle with because you <br>have as much as any of us do. Itâ€™s your story about <br>yourself that has you struggle. I wrote The Story of You <br>to share accounts of how people can see that itâ€™s the <br>storyâ€”not realityâ€”thatâ€™s in your way.<br>People have a story that says they have very little <br>influence over the results they get in life. Not a true story. <br>Your life is created. Itâ€™s not delivered to you.<br></h6>', 1, '', '2021-06-09 12:28:50.134071'),
(41, 'earnwithme', 'My childhood dreams', '<p>Just like any other child I Know you have had a dream or goals you wanted to achieve when you became of age.Some are achieved,some are given up on while others are being struggled at to achieve.&nbsp;</p><p>A good example is me.... when I was young I wanted to to be a lawyer I didn\'t achieve this dream,now am pursuing an education degree, secondly I wanted to read hard and join a university of my choice...this one I achieved because am in one of the most prestigious Universities in Kenya. Lastly I wanted to become a very pronounced person in kenya a successful business womana woman of substance.this one am still working on it and I know I will achieve this dream because I believe in myself.</p><p>Not all childhood dreams are vague some define you in the future.</p><p><b><u></u></b><b></b><br></p><p><br></p>', 0, '', '2021-06-09 13:53:44.220075'),
(42, 'Dennis', 'CREATIVITY', '<p><b>But how do I become creative</b>? <br>All creativity emerges from inquiry. What would I like <br>to create right now? What do I want to produce? What <br>action can I take? Because inquiry always produces an <br>Inquirer, your highest, most creative self. Without <br>inquiry, you are in victim mode. <br>Once I choose what Iâ€™d like to create I am in action. <br>Taking action is the little trick. Itâ€™s far simpler than it <br>looks. But we complicate it with stories and clinging like <br>snails to negative beliefs about ourselves that weâ€™ve built <br>up over the yearsâ€”none of which ever turns out to be <br>really true.<br>All action has you leaving your comfort zone. Thatâ€™s <br>whatâ€™s fun about it when you do itâ€”and scary when you <br>think about it in advance. <br>Creativity is not about the mind, itâ€™s about the body, <br>and the action that body takes. The mind just shows up <br>later with a bundle of fresh new ideas. Ideas youâ€™ll enjoy <br>acting on.<br></p>', 0, '', '2021-06-09 14:40:22.929755'),
(43, 'Dennis', 'HOW DO I FIND MY PROJECT?', '<h6> <b></b>How do I find my project<b></b>? <br>People sometimes think â€œthe knowingâ€ of their next <br>project descends upon them at some time. Or, that â€œthe <br>knowingâ€ is in their DNA already. It is not. <br>The knowing is created. It\'s something you make up. <br>You can make up what you want. You can invent a big <br>purpose. It\'s all creation. (In fact, no one has ever had a <br>definite major purpose that wasn\'t made up.)<br>Purpose is whatever you say it is when you wake up <br>in the morning. And purpose doesnâ€™t carry over all by <br>itself from day to day. You have to create it fresh when <br>you wake up. And thatâ€™s good news because it puts you <br>in complete creative control.<br>If we all had a purpose that we â€œfoundâ€ in a dream or <br>in our hearts or under a mossy stone in the forest outside <br>of Camelot, we wouldnâ€™t be creative. We wouldnâ€™t get to <br>do the most fun thing in the whole world, and that is to <br>create.<br></h6>', 0, '', '2021-06-09 14:43:50.403519'),
(44, 'Dennis', 'EARN FIRST SPEND LATER', '<h6><b>Earn first and spend later</b> <br>When you spend first and earn later, which is one way to <br>do it, you will never know how close to the financial line <br>you are before you need to quit spending forever. <br>(Youâ€™re probably already there.)<br>We are a whole nation whose politicians sought <br>reelection to their elite club by spending first and hoping <br>you and I and our children and grandchildren would earn <br>later to cover their vote-buying. (And to even call it <br>â€œbuyingâ€ is an undeserved compliment, because buying <br>requires an exchange of value.)<br>Financial freedom comes from making tough-minded, <br>courageous choices. It is not about going unconscious. <br>The true economic optimist sees the possibilities and <br>makes things happen without spending unearned money. <br>Thatâ€™s the part financial optimism plays. It has you see <br>options instead of obstacles.<br>Optimism is a tool for opening your thought and <br>energy to new possibilities for action. It is not a result of <br>outside circumstances. <br>Optimism is a tool for thinking that can be used any <br>time. It is not a feeling. Most people think optimism is af that comes and goes, and thatâ€™s why they never <br>know how to use it.<br>Optimism is an effective tool, like a shovel. Think <br>how useful a shovel is if you are going to dig a hole in <br>your yard. You never ask before you dig, â€œHow do I get <br>myself to feel like a person who uses a shovel?â€ <br>You use one or you donâ€™t<br></h6><h6><br></h6>', 0, '', '2021-06-09 14:59:15.806980'),
(45, 'Dennis', 'IMPORTANT OF FIFTEEN MINUTES', '<h6><b>Use your fifteen minutes </b><br>Perseverance is not a long race;<br>it is many short races one after another.<br>Walter Elliott<br>The Spiritual Life<br>Andy Warholâ€™s well-worn prediction was that in the <br>future everyone would be famous for fifteen minutes. <br>Letâ€™s put some life into that and say that from now on <br>you can be a successful person for 15 minutesâ€¦ any and <br>every 15-minute period you select!<br>Isaac Asimov was a bestselling science fiction writer <br>of such classics as I, Robot, but he was even better <br>known for how productive he was. He wrote over 500 <br>books in many categoriesâ€”mysteries, science, history, <br>you name itâ€”often writing 12 to 17 books in a single <br>year.<br>No one has ever come close to his remarkable output <br>of books. His key to success was his readiness to write. <br>He never had to get ready to write. He never had to workon his motivation or procrastination. To a time warrior <br>like Asimov, there were no such emotional luxuries as <br>procrastination or lack of motivation. <br>He said, â€œIt is important to be able to begin writing at <br>any time. If there are fifteen minutes in which I have <br>nothing to do, thatâ€™s enough to write a page or so.â€<br>Now letâ€™s go from 15 minutes to one minute. Spencer <br>Johnson is the author of The One Minute Sales Person. â€œI <br>have more fun,â€ he said, â€œand enjoy more financial <br>success, when I stop trying to get what I want and start <br>helping other people get what they want.â€ He can often <br>do that in one minute!<br>He makes his book about a one-minute sales person <br>because it only takes a minute to turn the whole focus <br>around from me to you. I turn away from satisfying <br>myself and turn toward making you happy. That\'s when <br>sales happen.<br>That\'s when requests of any kind start to get answered <br>in the positive. When my request honors your worldâ€”not <br>mine. Focusing on my own â€œneedsâ€ will cause me to lose <br>sales, lose friendships, lose business, lose happiness. <br>Wanting something for myself is demeaning and always <br>feels infantile at the level of soul. Wanting something for <br>you is more fun than I ever dreamed it could be.<br>My success will come once Iâ€™m readyâ€”truly, always <br>readyâ€”to use any fifteen minutes that shows up to serve <br>somebody with. <br></h6>', 1, '', '2021-06-09 15:03:34.562360'),
(46, 'silltermurangir', 'Faith heals', '<p>The strong in faith never lack, but the weak really suffer as a witness the only thing to keep you running and strong is faith.Have faith inGod and your problems are solved for faith heals.</p>', 0, '', '2021-06-09 15:05:40.733684'),
(47, 'Dennis', 'WHAT, EXACTLY, DO I WANT TO DO?', '<h6><b>What, exactly, do I want to do?</b> <br>I\'ve got more energy now than when I was younger <br>because I know exactly what I want to do.<br>George Balanchine<br>Ballet master<br>Push my head under the water and I experience an <br>increase in energy because I am immediately focused on <br>what I want to do. I want to get out of the water. So I <br>know exactly what I want to do.<br>And any time I know exactly what I want to do my <br>energy increases.<br>My energy increases the same way the sun\'s power <br>increases when I take the diffuse rays and harness them <br>and focus them through a simple magnifying glass and let <br>the focused ray of sun burn an old dead leaf like a <br>science fiction laser.<br>When we focus we are joining the energy that created <br>the world. We forget that we can always do that. We <br>forget, and then we cling to worries and fears and all the mindstuff that keeps us passive. Soon anger emerges. A <br>vicious circle.<br>But the minute someone calls us out back to play <br>volleyball or take a swim or climb a mountain or ride a <br>bike, something happens. We are breathing deeply once <br>again! We are joining the energy that created the world. <br>Breathe first, then let the mind expand. Donâ€™t wait for it <br>to happen the other way around<br></h6>', 0, '', '2021-06-09 15:05:55.599170'),
(48, 'Dennis', 'STOP LYING TO YOURSELF', '<h6><b>Stop lying to yourself</b> <br>People want their lives to be different. People want <br>success instead of failure. But then people begin <br>sentences with â€œI don\'t know how to...â€ and right then <br>they are down the rabbit hole. They have become <br>victims. The primary thought of a victim is â€œI don\'t know <br>how to.â€ And it\'s always a lie.<br>People tell me, â€œI want to be a coach, but I don\'t know <br>how to...â€ Whatever. And why would I want to help a liar <br>like that? My book about the 17 lies was about that whole <br>false approach to life. A toxic mind swamp of selfï¿¾deceiving. (I only know it because I did it myself... but <br>only for 40 years.)<br>If you want to be a coach, coach. If you want to be a <br>singer, sing. If you want to be a writer, write. If you want <br>some money, go ASK for it and serve someone. Notice <br>the common thread here. And I repeat this quote again by <br>Aristotle: â€œWhatever we learn to do, we learn by actually <br>doing it. People come to be builders, for instance, by <br>building, and harp players by playing the harp. In the <br>same way, by doing just acts we come to be just. By doing self-controlled acts, we come to be self-controlled, <br>and by doing brave acts we become brave.â€<br>A warrior doesnâ€™t have to â€œknowâ€ what to do. A <br>warrior doesnâ€™t have to â€œknow how toâ€ do something. A <br>warrior simply chooses to do it<br></h6>', 0, '', '2021-06-09 15:07:43.498526'),
(49, 'Allanoh', 'A sample letter to say sorry to a lover', '<b>\"it Was Inappropriate, And I\'m Sorry</b><br><div><b>&nbsp; My Dear,</b></div><div><b><br></b></div><div><b>I\'m Hoping That, With This Letter You Will Accept My Most Sincere Apologies. I Made A Mistake, And Was Unfortunate In What I Said, But I Didn\'t Mean To Offend You. More Importantly, Deep Down, I Never Believed You Would Go Ahead And Do Something I\'d Suggested In Such A Foolish And Irresponsible Joke.</b></div><div><b>I Was Unusually Inappropriate, And My Biggest Mistake Is That I Acted Like Towards The Person That Least Deserved It, Because You Are The One That Brought Me Back The Joy Of Life. So, I Beg For You Forgiveness And I Hope You\'ll Find In Your Heart The Ability To Grant Me That Request.</b></div><div><b>You Have A Noble Soul, With No Place For Anger, Despite All The Sorrow And Pain I\'ve Inflicted Upon You, For Which I Remorse And Punish Myself.</b></div><div><b>A Few Hours Have Since Gone By (sad Ones, To Tell You The Truth), And I Realize How Stupid I Was. I Know You Well Enough To Have Guessed The Things I Said Would Offend You. I\'m Not About To Sing You A Ballad Or Talk About Love In Bunches; You Know How Much I Love You, And I Know And Believe That You Love Me, Even Though You`re Feeling Hurt At The Moment, And Rightly So.</b></div><div><b>I\'m Sad And, At The Same Time, Mad At Myself For Having Been So Stupid. Please Forgive Me.</b></div><div><b><br></b></div><div><b>(signature)\",</b></div>', 1, '', '2021-06-09 15:17:14.824345'),
(50, 'Gitonga', 'Why students drop out of school', '<p><b></b>Peer pressure<br></p><p>Lack of parental support</p><p>Unwanted pregnancies</p><p>Lack of school fees</p><p><br></p>', 0, '', '2021-06-09 15:22:36.216822'),
(51, 'Dennis', 'MAKING LIFE MEANING', '<h6>Jesus said the kingdom of heaven is within. Marcus <br>Aurelius said, â€œDig within. Within is the wellspring of <br>good; and it is always ready to bubble up, if you just <br>dig.â€<br>So, how to stay engaged? <br>Friedrich Nietzsche once observed that â€œMan is the <br>only animal who has to be encouraged to live.â€ Iâ€™ve <br>needed that encouragement myself in past days and <br>suicidal nights gone by.<br>And one day I no longer needed it. One day I <br>discovered that my encouragement was found by digging <br>within! Those dark days and nights were gone for good <br>and the blue was back in the sky. The long, dreary linear <br>life was over and I saw how short this vertical uprising <br>called living could be! I mean it was already over! Who <br>needs to be encouraged to maintain something thatâ€™s <br>already over? <br>And in that same spirit, were I to find myself needing <br>â€œhelp to stay engagedâ€ in this life I would know itâ€™s time <br>to call the hotline once again.<br>Itâ€™s only when my mind is contaminated with fearful <br>beliefs that I try to add meaning to things. But that <br>activity is always (as the Zen masters say) like adding <br>legs to a snake. Like painting a rose with red paint.<br>The great mythologist Joseph Campbell was once <br>asked by an up and coming writer what Campbell would <br>recommend as a cure for writerâ€™s block. â€œCut off your <br>head,â€ said Campbell.<br>In other words, write from the heart, live from the <br>heart. We are always and already totally engaged. We <br>breathe in from life and breathe out to life and this <br>mutual giving keeps us engaged. It is the very definition <br>of engagement.<br></h6>', 0, '', '2021-06-09 15:24:18.376963'),
(52, 'Dennis', 'Making life meaningful', '<h6>Charlie Manson thought there was secret meaning in <br>the Beatlesâ€™ White Album, especially in the song â€œHelter <br>Skelter.â€ People have insisted to me that when Jesus <br>says, in the Bible, that some men, if they behave certain <br>ways, are better off at the bottom of the ocean with a <br>millstone around their necks, there is a subtle symbolic <br>â€œmeaningâ€ there that I might be missing. Something <br>more spiritually elegant than â€œIâ€™d like to drown them.â€ <br>Only the mind that believes the darkest of <br>superstitions can talk the body into feeling disengaged <br>from this whirling life. So if I believe I need a method<br>that helps me to stay engaged, I am like Nietzscheâ€™s man <br>who needs to be encouraged to stay alive.<br>Thatâ€™s not for me anymore.<br>I like staying alive in exactly the same way the Bee <br>Gees like stayinâ€™ alive<br></h6>', 0, '', '2021-06-09 15:25:35.313122'),
(53, 'Ngasharr', 'Time to start', '<p>In life it always good to start something with passion of it&nbsp;</p><p>I would like to wishes everyone to start a new thing every day</p>', 0, '', '2021-06-09 15:45:14.803655'),
(54, 'Mosemosesi', 'How Bitcoin Can Get You Rich With A Year, Here Is The Secret', '<p></p><h1>Plan for your success and get the real deal in what has changed the life of many.<br></h1><div><div></div><p>If you want to be rich you need not to rush in making decisions. There is very important thing which is matters in trading and owning bitcoin. Think critically before making decision.</p><div><img alt=\"\" src=\"https://res.6chcdn.feednews.com/assets/v2/431ec4fa918c4ac69de93d6893445434?quality=uhq&amp;format=webp&amp;resize=720\"></div><p></p><div></div><p>Because bitcoin investors often know how to rush in the fall of the price and sell their coins. After the sale, the value often increased enormously and made them regret the step they took.</p><p>That is why it is important to make an analysis, consider the risks, and then make a decision. Only with a well considered situation can you decide if you already want to invest and create wealth.</p><div></div><p>Bitcoin is one of the most popular crypt I currencies in the last 11 years since the concept of virtual currencies in question was officially introduced.</p><p>Make sure you gather enough information about any investment that involves online deals</p></div><br><p></p>', 0, '', '2021-06-09 20:55:11.748818'),
(55, 'silltermurangir', 'Black people\'s peace', '<p></p><blockquote><p>Out in the world, peace is most important.Killing can earn you nothing</p><p>Black people we are one we are equal and peace is the only left solution..keep moving.</p></blockquote><p></p>', 0, '', '2021-06-10 01:28:12.093426'),
(56, 'Joel46', 'Encouragement', '<p>The most determinative and motivating sentence which should always be followed in life .The <i>RACE</i>&nbsp;<i></i>is <i>NOT</i>&nbsp;<i></i>&nbsp;<i>OVER</i>&nbsp;because I haven\'t&nbsp;&nbsp;<i>WON&nbsp;</i>yet.</p>', 0, '', '2021-06-10 02:19:18.615505'),
(57, 'Joel46', 'Motivational quote ', '<p><i><b></b></i>Never Be Afraid To Change Your Vision, Set New Goals, And Challenge Yourself. Life Is Best Experienced Without Boundaries; So Live Each Day Ceremoniously And When In Doubt, Order The Pie.</p>', 0, '', '2021-06-10 02:30:40.395697'),
(58, 'collins245', 'MY JOURNEY HOME', '<p><b>I WAS WORKING HOME LAST NIGHT WHEN SOME TWO MEN APPEARED TO ME.THE MEN WHERE WEARING MASK AND CURRYING SOME MACHETE&nbsp;IN THEIR HANDS IN ASKED THEM WHAT DO YOU WANT FROM ME .ONE HUGE MEN STANDING IN THE MIDDLE ASKED ME DO YOU HAVE IDENTIFICATION I ASKED THEM, SIR FOR WHAT.HE SAID WE ARE LOOKING FOR THIEVES CARRYING SOME MONEY FROM OUR NEIGHBORHOOD,ARE YOU THE ONE ?I SAID NO SIR IT IS A MISTAKEN I D. THE MAN RESPONDED TO ME IN A VERY ARROGANT MANNER SIT DOWN IN THE DUST YOU MOUSE YOU LOOK LIKE THE ARMED ROBBER TO ME I WAS VERY ANGRY AFTER A WHOLE DAY HUSTLE</b><br></p>', 0, '', '2021-06-10 03:31:35.234919'),
(59, 'RitaCatherine', 'Hardwork', '<p>Train insane or remain the same</p>', 0, '', '2021-06-10 04:46:36.783523'),
(60, 'RitaCatherine', 'Fitness', '<p>If you think lifting weights is hard try being weak....being weak makes everything hard....well done is better than well said</p>', 0, '', '2021-06-10 04:50:27.003840'),
(61, 'sharon', 'How to overcome your fears.', '<p><b>Each and every person has his/her fears. What is fear:fear is a feeling or sansations that react in our bodies.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fear comes when a person did something wrong, example when a student is found cheating in an examination hence h/her paper will be cancelled,this act brought a lot of fear.&nbsp; Another example is when you are called for a job interview,most of us have fear because when you get at the interview , you wouldn\'t know what to expect ,so this brings alot of fear.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Here is how you can overcome your fears, first understanding yourself, knowing your strength, capabilities also because if you know yourself it will help you and secondly trust in yourself, when you\'re going for an interview you should reach at the place 30minutes before the actual time,this will help you relax , remember all that you have practiced earlier hence giving you confidence . And avoid doing what you know is not worth doing,or something that is bad ,if you did this then you shall overcome your fears.</b><br></p>', 0, '', '2021-06-10 06:27:03.533223'),
(62, 'Scovian', 'My life..', '<p>My name is scovian ,a mother to 3beautiful children.one boy and two girls.i love my family alot , but I have this husband that is never there for me.he is always busy and the truth be told am never happy with him.But what will I do am married to him.</p><p>&nbsp; What I can tell my dear ladies is...go into marriage when it\'s necessary not because someone has forced you.in short early marriage is not good..</p>', 0, '', '2021-06-10 06:29:47.747719'),
(63, 'sharon', 'What the world see\'s in you.', '<p>Most of the people see the world in a different ways.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;We often mistake the world, if you can ask a person how he/she see the world the answers will be very different, I once asked my friend on how the world is ,here is how she described the world,\"The world is a beautiful place to live in but unfortunately to me the world has been cruel to me because I\'ve been through a lot, in the year 2012 I\'ve lost my family in an accident which claim my sister\'s life and left my parents with disabilities , when we ask for help from our close relatives ,they left us, our relatives are greedy ,no love or even care amongst them, since then we have been surviving by God\'s grace\". To her she said that the world is cruel and harsh but what I\'m emphasing is that, there\'s no wold with you and me,the world is us do good to others,help them, forgive whoever wrong you because what is seen in you is what the world will give you, you are the world remember that , help a relative and with the same love you show is what you\'ll get back,if you\'re greedy then that will be your fate, God created us as one and not two or three, we came from one person and our journey is all the same.</p>', 1, '', '2021-06-10 06:50:07.643623'),
(64, 'Odhiambo', 'How I cub stress', '<p>Firstly I always ingage myself with friends and games.I love football game so if am not in the field,I have those football apps like dream league soccer game.then I involve myself to movie halls after that I look where the bed is.</p>', 0, '', '2021-06-10 07:13:53.297076'),
(65, 'Dennis', 'EVIL BUT GENEROUS', '<h6>Evil but Generous....<br><br>He was a philanthropist...<br>He empowered the youths of his community...<br>He helped widows...<br>He was the voice of the poor...<br>But #Wadume was allegedly a deadly kidnapper who allegedly took hundreds of millions of Naira as ransom from his victims...<br>The source of his wealth makes even his philanthropy a fraud...<br>Just like Pentecostal prophets who build huge hospitals or schools with money they stole in God\'s name...<br>Just like #InvictusObi who inspired millions of African youths with the wealth he stole through internet fraud....<br>Just like your politicians who feed the poor with the money they stole from the poor...<br>Just like #Hushpuppi who gave many celebrities money from the spoils of his fraud... <br><br>Listen beloved people of Africa, beware of GENEROUS evil men - they steal billions with one hand, shed blood and give NOISY COINS with the other hand to shut down your conscience. Mark them.<br><br>Beware of Evil but Generous Pastors... Beware.<br>Generosity is an ancient occult weapon which evil masters use to crush the conscience and mind of the weak. Be ware.<br>If you are reading this post, make sure that someone else reads it too... You could be helping a girl who is about to Date an evil stranger just because they are GENEROUS.<br>When I was in high school, a certain man became very generous to me. He gave me new sandals, clothes, food etc. One day, he invited me to visit where he lives and when I got there, he tried to sodomize me. I hit him in self defense and escaped. I avoided him afterwards and reported him to my seniors in school. It was because of my encounter with him that I learnt that most evil men are extremely generous.... Beware.<br><br>To the Nigerian POLICE who arrested Wadume, please start arresting other generous but evil men...<br><br>To Christians, don\'t get fooled by generous mammonic pastors - it\'s a strategy. The biggest manipulation is generosity. <br><br>To young girls, generosity is not love. A man can give you $10,000 and still not love you but only desire to use you. Train your emotions not to fall for generosity.<br>To everyone - a person can be Evil but Generous.<br></h6>', 0, '', '2021-06-10 07:14:58.142807'),
(66, 'Allanoh', 'A great love letter to your husband/boyfriendðŸ˜', '<p>\"i\'m Hopelessly Yours&nbsp;&nbsp;</p><p>&nbsp; &nbsp;My Love</p><p><br></p><p>To Be Hopelessly Yours: This Is My Fate; And More Than Conform Myself With It, I Rejoice With It! The Possibility Of Not Having You Someday Would Frighten Me, If Not Terrify Me.</p><p>How Could I Live Without Your Love And Without The Providential Support Of Your Shoulder, Always A Pillow For My Little Head Always So Tired? How Could I Be Happy Without The Comfort Of Your Words, Always Gentle And Optimistic? How Could I Feel Like A Woman Without The Vigorous Touch Of Your Hands On My Shoulders, In The Glorious Moments When We Make Love? You Complete Me As A Human Being, You Complete Me As A Woman And (without Wanting To Feed Your Vanity!) You Complete Me As A Female, Because Under Your Body And The Effect Of Your Kisses No Reasoning Can Resist.</p><p>On The Other Hand, You Are An Extension Of Me And I Know You Would Not Stand Too Long In My Absence. As I Put Myself In Your Hands, I Know That You Are In My Hands, But I Want You To Understand This Not As A Threat But As Confirmation Of A Great Love, Because I Do Not Mind That I Am In Your Hands And It Does Not Weigh Anything To Have You In My Hands, Because I Know That We Will Always Use Our Hands To Distribute Affection To One Another.</p><p>I\'m Hopelessly Yours, I Need You. And I\'m So Yours That I Take That As A Confession Of Surrender, Because I Trust You So Fully That I Would Never Shy Away From Doing Anything That Would Relieve Your Suffering Or Cause You Any Pleasure, Whatever It Was.</p><p><br></p><p>A Kiss From Your Wife,</p><p>(signature)\"</p>', 0, '', '2021-06-10 07:16:05.125236'),
(67, 'Dennis', 'EARNPRO AGENCIES 2021', '<h6>Welcome to Earnpro Agencies, join our earning platform by simply paying a one time package of Ksh. 200. Here you earn as much as you can. Get paid for Smartquizzes, blogging, article writing, Spin and win and stand a chance to win up to 100 times your stake.Invite a friend and earn on two levels: 100,50, Don\'t miss the great opportunity available.<br>ðŸ”Ž *VARIOUS WAYS TO EARN:* <br> *1ï¸âƒ£ &nbsp; REFERRAL BONUSESðŸ’ŽðŸ‘¥* <br>LEVEL 1 =KSH 100<br>LEVEL 2 =KSH 50<br><br> *2ï¸âƒ£  ðŸ“BLOGGING* .<br>Write exemplary blogs and get paid instantly  ðŸ¤‘<br><br> *3ï¸âƒ£  ðŸ¤©Buy AirtimeðŸ“±* <br>Get 15% commission for every Airtime you Buy.<br><br>4ï¸âƒ£. *Article writing* .ðŸ“–ðŸ“ <br>Standing  out articles awarded commissions ðŸ’°<br> *5ï¸âƒ£.  Earnpro spin.* âŒ›â³<br>All users will enjoy the following categories of spin wheels.<br>i) &nbsp; *Welcome spin* (available after registration ) Guaranteed win <br>ii) &nbsp; *Free spins* (Available at specific times scheduled)<br>iii) *Lucky Spin* (Available all times)<br>5ï¸âƒ£ ADVERTS<br>Advertise with us , grow with us.<br>6ï¸âƒ£ Online Resources<br>Free free  ebooks and other useful online resources available <br> 1. *Instant withdrawal to yourMpesa* <br>2 *. Direct contact to our customer care  desk* ðŸ–¥<br><a target=\"_blank\" rel=\"nofollow\" href=\"https://earnpro.co.ke/signup.php?aff=Dennis\">https://earnpro.co.ke/signup.php?aff=Dennis</a> Register nowðŸ’¸ðŸ’¸ðŸ’¸<br><br>Registration is FreeðŸ†“ Account Activation is Ksh.200<br></h6>', 0, '', '2021-06-10 07:16:36.621862'),
(68, 'Allanoh', 'A sweet reconciliation letter ðŸ˜', '<p>\"come Back To Me...</p><p>&nbsp; My Dear (name),</p><p><br></p><p>I Hope You Can Forgive Me And I Hope You\'ll Read This Letter Till The End. I Just Want To Apologize, To Say That I\'ve Made A Big Mistake When I Decided To Get Away From You, And All I Know Is This Mistake Has Made Me Cry And Suffer Too Much.</p><p>I Know My Attitude Wasn\'t The Most Correct One, But Believe Me When I Say That I Was Wrong, Confused And Unsure Of What I Wanted. As Soon As We Broke Up I Realized That, In All Truth, Only You And You Alone Could Make Me Happy...</p><p>Please Don\'t Mistake My Apologies For Yet Another Selfish Attitude, As If I Could Think Of No One But Myself Right. If You Are Noble Enough To Forgive Me, You Will See That I Too Can Make You Very Happy!</p><p>I Know You Must Be Crossed And I Can Understand Your Reasons All Too Well. I Know The Extent Of My Mistake And I Have Even Tried To Put Myself In Your Shoes, I Understand The Sad And Uneasy Situation I\'ve Put You In, By Being Childish And Insecure.</p><p>But I Have Trust In Your Generous Heart, I Trust You Pure Soul And I Sincerely Hope That You Give Me Another Chance, One Last Chance For Me To Make You Feel Happy And Very Much Loved.</p><p>Please Call Me Or Write To Me Quickly! Accept My Kiss Filled With Love And Carrying My Most Sincere Apologies...</p><p>Accept This Request For Reconciliation. Come Back To Me, My Love!</p><p><br></p><p>Yours</p><p>(signature)\"</p>', 1, '', '2021-06-10 07:17:27.176182');
INSERT INTO `article` (`id`, `user_id`, `title`, `body`, `status`, `ufile`, `date`) VALUES
(69, 'steveamo4', 'WHAT KILLS MUSICAL CREATIVITY!', '<p>It is a tragic place where music lovers love music more than musicians. When musicians fall in love with the music industry more than music, it creates hunger and frustration for music lovers.<br>it is a tragic place when backers stop backing cakes because there is a daily demand for bread. creativity and art dies right there.<br><br>Fellow musician, be careful of not falling into the trap of the demands of the music industry. It can kill your passion for the music. A hungry musician will only compose what the market dictates.  <br></p>', 1, '', '2021-06-10 09:23:40.128186'),
(70, 'Odhiambo', '', '<p>Human rights say;</p><p>My right to swing my fist ends where the other one nose starts...</p><p>Is this right now&nbsp;</p>', 0, '', '2021-06-10 11:11:17.341623'),
(71, 'collins245', 'PARK AND RIDE FACILITIES', '<p>\r\n\r\n</p><div><p>A park-and-ride facility is being constructed at Kasarani to allow motorists heading to the city centre to leave their vehicles and take BRT transport for the remainder of the journey.</p></div><div><p>The project is being carried out in two phases. The first phase is between Clayworks, through the CBD and then to KNH, while the second starts from Clayworks to Ruiru.</p></div><div><p>There shall also be a bus terminal at KNH, and depots in Kasarani and Ruiru as well as a transfer station at the Nairobi Railway Station. Along the corridor will be non-motorised transport.</p></div><div><p>So far, works on designated BRT stations are ongoing at Garden City, Safari Park, Roysambu, Clayworks, Kahawa Barracks and Kenyatta University. </p></div><div><p>In January, NaMATA released a schedule of the long-awaited BRT system, which contained the time and routes the BRT buses will ferry commuters to and from the CBD to Nairobi estates.</p></div><div><p>NaMATA said it will first deploy buses across five city routes that have been allocated lines - Ndovu, Simba, Chui, Kifaru and Nyati.</p></div><div><p>The authority has since pushed for the approval and gazettement of the five-node BRT network that will see commuters enjoy hourly bus services.</p></div><div><h2>Bus schedule</h2></div><div><p>NaMATAâ€™s five routes will cover the CBD, Kenyaâ€™s financial hub of Upperhill and straight into various estates.</p></div><div><p>Ndovu line will open at 6am from Kangemi, and run through Westlands (6.15am), the town centre (6.30am) onwards to Nairobi West (6.45am), NextGen Mall (7am), and end its first journey @7.15 am</p></div>\r\n\r\n<br><p></p>', 0, '', '2021-06-10 12:10:56.890719'),
(72, 'Dennis', 'Positive mindset', '<h6>Waking up feeling bad? <br>The only reason they come to see me <br>is that I know that life is greatâ€”<br>and they know I know it.<br>Clark Gable<br>A true time warrior takes up arms against depressed <br>feelings and worrisome, fearful thoughts. She sees that <br>they are never true anyway.<br>You do not need to wake up with a depressed or <br>threatened feeling. That feeling, however vague, stark <br>and lonely, can only be produced by something you are <br>thinking and believing. It doesnâ€™t just arrive out of <br>nowhere. Thought always comes before a feeling and <br>causes the feeling.<br>So if I were waking up feeling anything other than <br>happy and warlike, I would keep a pad of paper by the <br>bed, and when I woke up Iâ€™d capture the thoughts that <br>have me feeling down. Iâ€™d write them down. Iâ€™d work <br>backwards if I had to; in other words, if I didnâ€™t â€œknowâ€ <br>the thoughts, Iâ€™d put my feelings into words<br></h6>', 1, '', '2021-06-10 13:56:43.526860'),
(73, 'Dennis', 'Announcement', '<h5>**ANNOUNCEMENT!ANNOUNCEMENT!* <br>Somepeople still think that *CORONAVIRUS*is rumours Think about your life.<br> *3 STEPS TO FOLLOW* <br>1.wear musk.<br>2.Sanitize.<br>3.Keep physical distancing 1.5 meters.<br> **REMEMBER*to keep your life safe.<br><br></h5>', 0, '', '2021-06-10 13:59:15.145664'),
(74, 'steveamo4', 'ONLY IN THE DARKNESS ARE YOU ABLE TO SEE THE STARS!', '<p>Region as a study of sin has increased sin. Medicine as a study of disease has increased diseases. Economics as a study of poverty has increased POVERTY. <br>To take formless substance and bring it into physical reality is possible for the thinking mind who fixes his thoughts upon the creation of his magnificent obsession. Desire is the starting point of all achievements.<br><br>Sometimes when going through HEAVY BATTLES,keep your mouth shut in PUBLIC and only open it in SECRET until the disaster passes<br>Not everyone acting CONCERNED is really concerned.Some are just surprised you survived it and your mouth may betray you.<br>Some who pause as angels are not angels at all but wolves in sheep skin!<br><br>Know when to shut up.<br></p>', 1, '', '2021-06-10 15:14:20.685465'),
(75, 'Allanoh', 'Best dating tips', '<p>Explore The Wonders Of Nature Around You By Taking An Explorer\'s Walk. Collect Interesting Things Along The Way Such As Leaves, Flowers Or Rocks. Trace Shadows. Draw Favourite  Scenes. Frame Or Scrapbook Your Memories.</p>', 0, '', '2021-06-10 15:47:04.283665'),
(76, 'marthamay', 'A nice evening', '<p>After a long day,we finally branched into a restaurant and took a cup of coffee.<img alt=\"\" src=\"http://\"></p>', 0, '', '2021-06-10 16:38:52.150254'),
(77, 'sharon', 'Stop being lazy.', '<p>Stand up,wake up continue moving.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; What destroys the body is the feeling of being weak, many of us like to complain as why is it always them, when you start your day with complains then it will end with the same.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Just a rise and shine,do whatever you need to be do, work out on your potentials,goals and your future. Set your goals and follow them, when I wake up, I always exercise because they\'re so many advantages when you exercise. Exercise makes me more flexible and more energetic, while exercising I break down the chemicals in my system.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; To be successful and in life I have to be vigilant , strong , discipline and by doing hard work, sacrifing more:lack of sleep, putting passion on what I\'m doing, being open -minded, being ready to accept any opportunity that comes my way.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; What if all people in the world were lazy , then what would have been the world? A world full of laziness is not a world worth living in,&nbsp; stand up and put more effort.</p>', 0, '', '2021-06-11 00:15:21.117644'),
(78, 'sharon', 'God\'s time is the best.', '<p>Have ever prayed for something and expect God to answer you in a particular time but God didn\'t answer you?&nbsp; &nbsp; &nbsp; &nbsp;What you should know that it wasn\'t the wright time yet. Denial doesn\'t mean not getting what you pray for.&nbsp; &nbsp; &nbsp; God denials you something because you\'re not ready to receive it,thats why He wants to strengthen your fasting spirit and praying spirit because God wants to bless you much more than you prayed for and this is why He wants you to be strong and ready,&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I know you always ask yourself so many questions when you see things aren\'t working out for you, when you see your friends have got a business running smoothly, others have a happy family, being in the same company with your friend and him being promoted while you aren\'t. And while this happens you started feeling upset ,hating yourself and even envious, don\'t loose yourself because this are pemptetions, because even Jesus was tempted.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Do you remember when you ask something from your parents when you\'re a toddler and you were told to wait and you started crying ðŸ’¦ðŸ’¦!!, because you thought you\'re told no , even Abraham waited for God\'s blessings without hesitation, and he was blessed .&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Let\'s wait for God\'s time because Jesus loves us.</p>', 0, '', '2021-06-11 00:54:29.119136'),
(79, 'sharon', 'This life called race.', '<p>What are you running for?,is it for success?&nbsp; &nbsp; &nbsp; &nbsp;In this life you are running for and you always win and lots of people chears for you, meaning you became successful ,most people honour you and praise you in every way, you open a buds and it flows smoothly, then you employee stuff but at the end of the day you speak rudely to them, you become greedy , demoralised your employees and even at some point beat them.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The people chearing at your success will once be your opponent, they will stop praising you, fearing you, doing what you order them to do. And why because they will get tired of you, while this continues,you end up losing your employees. In a span of a moment your business fails then you start blaming others.&nbsp; &nbsp; In this life, you should look beside you, who is next to you?is it an elderly person, is it a poor person,is it a disabled persons, is it an orphan? And what have you done for them. Help people beside you and when you do this then you shall prosper a ðŸ’¯ times than before, when you win a race, hold the person next to you , because they also participated in your winning.</p>', 0, '', '2021-06-11 02:15:35.598249'),
(80, 'LauraMackenzie', 'A New Approach To Reduce Student Debt', '<p>Every year, thousands of new highschool graduates pack their bags move to new cities and sign papers accepting loans they might not be able to pay back. Without proper education on personal finance ,especially as it relates to paying for college,young adulthood are ushered into faulty loan plans that result in bars of debt post college .In order to set students up succeed financially it is important to educate students and parents on their financial <u><i></i></u>options .</p><p>The best way to support families heading&nbsp; to college is that every high school student to take a finance course .&nbsp;</p><p><small></small><br></p>', 0, '', '2021-06-11 02:16:24.629600'),
(81, 'marthamay', 'CHOICES,CONSEQUENCES', '<p>There\'s always a price paid in everything we do.As the saying goes\"choices have consequences.\" Regardless of our actions,there is always a price paid sooner or later.Either way,it just happens.</p>', 0, '', '2021-06-11 03:08:59.588114'),
(82, 'Dennis', 'Perspective of life', '<h6>But what if life is still unfair? <br>I thought life was unfair for a long time. Full of boring <br>work for me while others had fun.<br>Then I saw the real truth. Life was not unfair. <br>I was unfair. <br>I was unfair to myself for having it be okay with me <br>to wallow passively in my victim mindset. I was cheating <br>myself out of a beautiful, fulfilling life. <br> You can make anything sparkle with natural interest,<br>because everythingâ€™s inherently compelling in and of <br>itself, until we inject it with negative thoughts and <br>beliefs. <br>So find the fun and interest in the task! Or add it! Find <br>it in yourself, and be both the director and the actor in <br>your own play and direct yourself to do this task with <br>great energy. You can do that.<br>Our problem is that we forget we can be the director <br>and the actor. Instead, we pout like little children. We go <br>on strike against life. Waiting for something entertaining <br>to come and entertain us.<br></h6>', 0, '', '2021-06-11 04:21:18.993191'),
(83, 'Dennis', 'Perspective of life', '<h6>But what if life is still unfair? <br>I thought life was unfair for a long time. Full of boring <br>work for me while others had fun.<br>Then I saw the real truth. Life was not unfair. <br>I was unfair. <br>I was unfair to myself for having it be okay with me <br>to wallow passively in my victim mindset. I was cheating <br>myself out of a beautiful, fulfilling life. <br> You can make anything sparkle with natural interest,<br>because everythingâ€™s inherently compelling in and of <br>itself, until we inject it with negative thoughts and <br>beliefs. <br>So find the fun and interest in the task! Or add it! Find <br>it in yourself, and be both the director and the actor in <br>your own play and direct yourself to do this task with <br>great energy. You can do that.<br>Our problem is that we forget we can be the director <br>and the actor. Instead, we pout like little children. We go <br>on strike against life. Waiting for something entertaining <br>to come and entertain us.<br></h6>', 0, '', '2021-06-11 04:21:55.336688'),
(84, 'Gitonga', 'How to grow our faith in God', '<p>Reading the bible</p><p>Practicing God\'s word</p><p>Broadcasting and giving testimonies</p>', 0, '', '2021-06-11 04:32:47.577022'),
(85, 'sharon', 'Raci', '<p>Racism is everywhere, the most people who suffer from this kind of abuse and are Africans. Most Africa\'s who are working in European countries,60 out of a ðŸ’¯ are treated badly and this happens especially in Saudi Arabia. Last week one of the ladies working in Saudi was brutally burnt simply because she defended herself from her boss. This has been going on ever since.&nbsp; They usually called the Africans \"monkeys\" hence demoralising them, when you\'re working in Saudi. , you are tortured and you became voiceless.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This has been happening and yet no one takes it serious, when it has happened is when they pretend to care. Let\'s rise up and stop Racism because we are all humans .&nbsp;</p>', 1, '', '2021-06-11 05:08:35.802710'),
(86, 'sharon', 'Raci', '<p>Racism is everywhere, the most people who suffer from this kind of abuse and are Africans. Most Africa\'s who are working in European countries,60 out of a ðŸ’¯ are treated badly and this happens especially in Saudi Arabia. Last week one of the ladies working in Saudi was brutally burnt simply because she defended herself from her boss. This has been going on ever since.&nbsp; They usually called the Africans \"monkeys\" hence demoralising them, when you\'re working in Saudi. , you are tortured and you became voiceless.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; This has been happening and yet no one takes it serious, when it has happened is when they pretend to care. Let\'s rise up and stop Racism because we are all humans .&nbsp;</p>', 0, '', '2021-06-11 05:09:13.964457'),
(87, 'Odhiambo', 'IMANI YAIMARIKA INAPOSHIRIKISHWA', '<p>Ndugu zangu wakatoliki,LeoLeo nina maswali,</p><p>Mbona hatushiriki,imani Kama awali,</p><p>Mepita siku wiki,hatujasonga hata mbali,</p><p>Imani huimarika,inaposhirikishwa.</p>', 0, '', '2021-06-11 05:36:43.161810'),
(88, 'Doreen2364', 'Raila, Kalonzo, Mudavadi, and Gideon In A Tight Corner As Ruto Handed A Headstart In 2022 Race', '<p>Controversial city lawyer Ahmednasir Abdullahi has put ODM leader Hon Raila Odinga, ANC boss Hon Musalia Mudavadi, Wiper party leader Hon Stephen Kalonzo Musyoka, Former MP Hon Peter Keneth, Gideon Moi of KANU, Mwalimu Abduba Dida, Moses Wetangula, and all other people who have expressed interest in succeeding President Uhuru Kenyatta in a tight corner after alleging that none of them has so far declared that he will run for the top seat in the next general elections.<br></p><p>Ahmednasir has further alleged that it is only Deputy President William Ruto who has declared interest in the top seat while the rest are waiting for Uhuru\' s word or rather an endorsement. Ruto has openly insisted that he does not need the endorsement of anybody in his quest as long as he has God and the people on his side and assured supporters that he will be on the ballot come 2022.<br></p><p>\" So, as of Friday 11 June 2022, the only person to declare his candidature for the August 2022 Presidential election is DP RUTO. Hon Raila, Mudavadi, Musyoka, PK, Gideon, Wetangula, GE Dida, Governor Joho, Oparanya. . . etc are all WAITING for H. E UHURU\' S WhatsUp message\" Ahmednasir Abdullahi SC</p><p>This comes at a time when the deputy president has stepped up campaigns for his bid while at the same time attacking Uhuru and Raila over the change of constitution plans. Ruto has urged the other leaders that should they find their plans conflicting with the constitution then it is upon them to change their plans and not changing the constitution.<b></b><b></b></p><p>Do you think the deputy president stands a better chance of clinching the seat bearing in mind that he is the first one to announce his bid? and will president Uhuru have a say in who takes over after him in 2022? Drop your comments</p><p><br></p><p><br></p>', 0, '', '2021-06-11 07:58:49.542579'),
(89, 'Doreen2364', 'Raila, Kalonzo, Mudavadi, and Gideon In A Tight Corner As Ruto Handed A Headstart In 2022 Race', '<p>Controversial city lawyer Ahmednasir Abdullahi has put ODM leader Hon Raila Odinga, ANC boss Hon Musalia Mudavadi, Wiper party leader Hon Stephen Kalonzo Musyoka, Former MP Hon Peter Keneth, Gideon Moi of KANU, Mwalimu Abduba Dida, Moses Wetangula, and all other people who have expressed interest in succeeding President Uhuru Kenyatta in a tight corner after alleging that none of them has so far declared that he will run for the top seat in the next general elections.<br></p><p>Ahmednasir has further alleged that it is only Deputy President William Ruto who has declared interest in the top seat while the rest are waiting for Uhuru\' s word or rather an endorsement. Ruto has openly insisted that he does not need the endorsement of anybody in his quest as long as he has God and the people on his side and assured supporters that he will be on the ballot come 2022.<br></p><p>\" So, as of Friday 11 June 2022, the only person to declare his candidature for the August 2022 Presidential election is DP RUTO. Hon Raila, Mudavadi, Musyoka, PK, Gideon, Wetangula, GE Dida, Governor Joho, Oparanya. . . etc are all WAITING for H. E UHURU\' S WhatsUp message\" Ahmednasir Abdullahi SC</p><p>This comes at a time when the deputy president has stepped up campaigns for his bid while at the same time attacking Uhuru and Raila over the change of constitution plans. Ruto has urged the other leaders that should they find their plans conflicting with the constitution then it is upon them to change their plans and not changing the constitution.<b></b><b></b></p><p>Do you think the deputy president stands a better chance of clinching the seat bearing in mind that he is the first one to announce his bid? and will president Uhuru have a say in who takes over after him in 2022? Drop your comments</p><p><br></p><p><br></p>', 1, '', '2021-06-11 07:59:03.510173'),
(90, 'Doreen2364', 'Sio Raila Na Sio Ruto! Tuju Names 2 Powerful People Responsible For Jubilee\'s Downfall', '<p>Recently reports that have been confirmed by Jubilee leaders have been making rounds that the ruling party is headed to its ultimate downfall, and now the party\'s Secretary General has on Wednesday 9th June hinted that something is definitely not right.<br></p><p>Currently, the party is experiencing massive exits by members who have smelt a rat. While the party continues to collapse, there are calls&nbsp;from party members to reshuffle leadership roles on the party. Most party members have been accusing Raphael Tuju and David Murathe especially for the loss in Juja and Ruiri by-elections</p><p>However, Tuju has distanced himself from the downfall in Jubilee. According to Tuju, the two leaders to be blamed are offices of the Party Chairman and deputy party Chairman, who is Nelson Dzuya and David Murathe respectively</p><p>\"Issues to do with party discipline does not rest with my office as the party secretary general. The offices of party chairman and deputy party chairman are the ones responsible. My work is only to execute and communicate their orders,\" Tuju said.</p><p>On his part, Murathe has maintained that Jubilee is a strong party. He however revealed that he was ready to leave the powerful position since he has fulfilled him main agenda, which was to remove DP Ruto\'s allies from the party.</p><p>\"Our job was to push out those who do not believe in the dream of the party. I am happy they have found a house called UDA. Our work is done,\"&nbsp;Murathe stated.</p><p>Jubilee party members like Ann Waiguru have revealed that stringent measures are supposed to be taken very fast so as to caution Jubilee from further damage.</p><p><br></p><p>\"The rains have beaten us. Our fortunes are dwindling. Intense introspection is demanded,\"&nbsp;Waiguru stated.</p><p>Jubilee party suffered humiliating defeat in the recent by elections, with the party now being unsure if they will be able to carry the victory in the coming Kiambaa By-Elections.&nbsp; Jubilee\'s candidate will be facing off with UDA\'s candidate in the much anticipated by elections.</p><p><br></p><p><br></p>', 0, '', '2021-06-11 08:18:55.878917'),
(91, 'Doreen2364', '', '', 0, '', '2021-06-11 08:19:03.611980'),
(92, 'Doreen2364', 'Big Blow To Raila As Ruto Takes Turkana By Storm As Women Gang Up Saying This', '<p>The deputy president William Ruto has received a mega boost After the turkana women have formed up a women\' s league to drum up support for him. The women through their league took an oath to support Ruto\' s presidential bid come 2022. The region which has been enjoying a lot of support for Raila Amollo Odinga has received a set back for the former prime minister.<br></p><p>The deputy president Has been gaining momentum in the country\' s politics as the man had been receiving a mega boost to his presidential ambitions giving his opponents sleepless night.</p><p>Apart from that, the women not only agreed to market the deputy president in Turkana only but also throughout the country\' s to ensure he grabs the top seat. This latest move by the women is a huge boost for the deputy president.</p><p>The former prime minister too needs to go back to the drawing board because Ruto\' s presidency is unstoppable. In addition to that, the deep state has tried everything possible to stop him from gaining momentum in the country but their efforts bore no fruit as the recent warm welcoming by Ruto in Kisumu symbolizes a lot for the deputy president</p><p>If this steps the deputy president takes persist, it will pause a bigger threat to the former prime minister and the one Kenya alliance who have expressed their interest in the top seat come 2022</p><p>Again, the former prime minister of Kenya and the Orange Democratic Movement party leader, Honorable Raila Amollo Odinga might end up alone if the plans being made by politicians from the Rift valley region works in their favor.</p><p>According to the latest reports received from the Region of Rift valley, it has been revealed that a couple of top politicians from this region are currently holding a meeting which is meant to bring both President Uhuru Kenyatta and his deputy, Honorable William Ruto back together ahead and 2022 general elections.</p>', 0, '', '2021-06-11 08:34:56.961491'),
(93, 'Dennis', 'Treasure the house within you', '<h6>The Treasure House Within You<br>Infinite riches are all around you if you will open your mental eyes and behold the treasure house of <br>infinity within you. There is a gold mine within you from which you can extract everything you need to <br>live life gloriously, joyously, and abundantly. Many are sound asleep because they do not know about <br>this gold mine of infinite intelligence and boundless love within themselves. Whatever you want, you <br>can draw forth. A magnetized piece of steel will lift about twelve times its own weight, and if you <br>demagnetize this same piece of steel, it will not even lift a feather. Similarly, there are two types of <br>men. There is the magnetized man who is full of confidence and faith. He knows that he is born to win <br>and to succeed. Then, there is the type of man who is demagnetized. He is full of fears and doubts. <br>Opportunities come, and he says, \"I might fail; I might lose my money; people will laugh at me.\" This <br>type of man will not get very far in life because, if he is afraid to go forward, he will simply stay where <br>he is. Become a magnetized man and discover the master secret of the ages.<br>The Master Secret of the Ages<br>What, in your opinion, is the master-secret of the ages? The secret of atomic energy? Thermonuclear <br>energy? The neutron bomb? Interplanetary travel? No not any of these. Then, what is this master <br>secret? Where can one find it, and how can it be contacted and brought into action? The answer is <br>extraordinarily simple. This secret is the marvelous, miracle-working power found in your own <br>subconscious mind, the last place that most people would seek <br></h6>', 0, '', '2021-06-11 12:02:38.338148'),
(94, 'Dennis', 'DUALITY OF MIND', '<h5>You have only one mind, but your mind possesses two distinctive characteristics. The line of <br>demarcation between the two is well known to all thinking men and women today. The two functions <br>of your mind are essentially unlike. Each is endowed with separate and distinct attributes and powers. <br>The nomenclature generally used to distinguish the two functions of your mind is as follows: The <br>objective and subjective mind, the conscious and subconscious mind, the waking and sleeping mind, <br>the surface self and the deep self, the voluntary mind and the involuntary mind, the male and the <br>female, and many other terms<br></h5>', 0, '', '2021-06-11 12:05:18.381956'),
(95, 'Dennis', 'How your minds work', '<h6>How Your Own Mind Works<br>You have a mind, and you should learn how to use it. There are two levels of your mind - the <br>conscious or rational level, and the subconscious or irrational level. You think with your conscious <br>mind, and whatever you habitually think sinks down into your subconscious mind, which creates <br>according to the nature of your thoughts. Your subconscious mind is the seat of your emotions and is <br>the creative mind. If you think good, good will follow; if you think evil, evil will follow. This is the way <br>your mind works.<br>The main point to remember is once the subconscious mind accepts an idea, it begins to execute it. It <br>is an interesting and subtle truth that the law of the subconscious mind works for good and bad ideas <br>alike. This law, when applied in a negative way, is the cause of failure, frustration, and unhappiness. <br>However, when your habitual thinking is harmonious and constructive, you experience perfect health, <br>success, and prosperity.<br>Peace of mind and a healthy body are inevitable when you begin to think and feel in the right way. <br>Whatever you claim mentally and feel as true, your subconscious mind will accept and bring forth into <br>your experience. The only thing necessary for you to do is to get your subconscious mind to accept <br>your idea, and the law of your own subconscious mind will bring forth the health, peace, or the <br>position you desire. You give the command or decree, and your subconscious will faithfully reproduce <br>the idea impressed upon it. The law of your mind is this: You will get a reaction or response from your <br>subconscious mind according to the nature of the thought or idea you hold in your conscious mind.<br>Psychologists and psychiatrists point out that when thoughts are conveyed to your subconscious <br>mind, impressions are made in the brain cells. As soon as your subconscious accepts any idea, it <br>proceeds to put it into effect immediately. It works by association of ideas and uses every bit of <br>knowledge that you have gathered in your lifetime to bring about its purpose. It draws on the infinite <br>power, energy, and wisdom within you. It lines up all the laws of nature to get its way. Sometimes it <br>seems to bring about an immediate solution to your difficulties, but at other times it may take days, <br>weeks, or longerâ€¦ Its ways are past finding ou<br></h6>', 0, '', '2021-06-11 12:07:40.955535'),
(96, 'Dennis', 'Miracle- working power of your subconscious', '<h6>The Miracle-Working Power of Your Subconscious<br>The power of your subconscious is enormous. It inspires you, it guides you, and it reveals to you <br>names, facts, and scenes from the storehouse of memory. Your subconscious started your heartbeat, <br>controls the circulation of your blood, regulates your digestion, assimilation, and elimination. When <br>you eat a piece of bread, your subconscious mind transmutes it into tissue, muscle, bone, and blood. <br>This process is beyond the ken of the wisest man who walks the earth. Your subconscious mind <br>controls all the vital processes and functions of your body and knows the answer to all problems.<br>Your subconscious mind never sleeps, [and] never rests. It is always on the job. You can discover the <br>miracle-working power of your subconscious by plainly stating to your subconscious prior to sleep that <br>you wish a certain specific thing accomplished. You will be delighted to discover that forces within you <br>will be\" released, leading to the desired result. Here, then, is a source of power and wisdom, which <br>places you in touch with omnipotence or the power that moves the world, guides the planets in their <br>course, and causes the sun to shine.<br>Your subconscious mind is the source of your ideals, aspirations, and altruistic urges. It was through <br>the subconscious mind that Shakespeare perceived great truths hidden from the average man of his <br>day. Undoubtedly, it was the response of his subconscious mind that caused the Greek sculptor, <br>Phidias, to portray beauty, order, symmetry, and proportion in marble and bronze. It enabled the <br>Italian artist, Raphael, to paint Madonnas, and Ludwig van Beethoven to compose symphonies.<br></h6>', 1, '', '2021-06-11 12:12:38.246400'),
(97, 'silltermurangir', 'Love kills.', '<p>5years down the line, Bill and his lover&nbsp;</p>', 0, '', '2021-06-11 12:32:36.409232'),
(98, 'silltermurangir', 'Trust and have faith in God.', '<p>Bill and his true love were one of the best couple ever known in kinyali village.They never believed in breaking up and incase of quarrels they asked for forgiveness from each other.</p><p>12years of their marriage but they had no children and this brought much confusion to the village,though they were scolded by their people they never forgot to pray for a blessings and shame the enemies.</p><p>Believing in God and believing in themselves was the only solution left.They prayed and prayed but still no change could be seen, this led to one hurting thing in their lives for they were sent away by the village who spread fake news that they were cursed.</p><p>The two travelled to nowhere since none of them knew where they were ending to and to make the matter worse they had no food no water&nbsp; but their trust in God never faded and God brought them to a land with no one but plenty of food water and fruits.He then blessed them with power to bear children.This was due to their trust and having faith in God.</p>', 1, '', '2021-06-11 12:45:40.897872'),
(99, 'Dennis', 'The power of subconscious mind', '<h6>The Conscious and Subconscious Minds<br>An excellent way to get acquainted with the two functions of your mind is to look upon your own mind <br>as a garden. You are a gardener, and you are planting seeds (thoughts) in your subconscious mind <br>all day long, based on your habitual thinking. As you sow in your subconscious mind, so shall you <br>reap in your body and environment.<br>Begin now to sow thoughts of peace, happiness, right action, good will, and prosperity. Think quietly <br>and with interest on these qualities and accept them fully in your conscious reasoning mind. Continue <br>to plant these wonderful seeds (thoughts) in the garden of your mind, and you will reap a glorious <br>harvest. Your subconscious mind may be likened to the soil, which will grow all kinds of seeds, good <br>or bad. Do men gather grapes of thorns, or figs of thistles? Every thought is, therefore, a cause, and <br>every condition is an effect. For this reason, it is essential that you take charge of your thoughts so as <br>to bring forth only desirable conditions.<br>When your mind thinks correctly, when you understand the truth, when the thoughts deposited in your <br>subconscious mind are constructive, harmonious, and peaceful, the magic working power of your <br>subconscious will respond and bring about harmonious conditions, agreeable surroundings, and the <br>best of everything. When you begin to control your thought processes, you can apply the powers of <br>your subconscious to any problem or difficulty. In other words, you will actually be consciously coï¿¾operating with the infinite power and omnipotent law, which governs all things.<br>Look around you wherever you live and you will notice that the vast majority of mankind lives in the <br>world without the more enlightened men are intensely interested in the world within. Remember, it is <br>the world within, namely, your thoughts, feelings, and imagery that makes your world without. It is, <br>therefore, the only creative power, and everything that you find in your world of expression has been <br>created by you in the inner world of your mind, consciously or unconsciously.<br>A knowledge of the interaction of your conscious and subconscious minds will enable you to <br>transform your whole life. In order to change external conditions, you must change the cause. Most <br>men try to change conditions and circumstances by working with conditions and circumstances. To <br>remove discord, confusion, lack, and ', 0, '', '2021-06-12 04:25:59.699095'),
(100, 'sharon', 'Online classes.', '<p>The widespread of Corona Virus has leed to online learning by schools, Colleges and Universities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Online classes have make online learning very easy and enjoyable, students can access the learning anywhere they are , students are now able to continue with their semesters and graduate. With new system, has also brought new challenges since the study is not one to one learning while other students can\'t ask questions and get immediate answers, other students don\'t have stable network hence missing classes, other students don\'t have to laptops or smartphones to access the internet. Other students instead of learning at the scheduled time they end up not attending the class at all.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;The online classes has been a great relieve to the students and lecturer\'s as a whole and with improvement of it and great enhancement of the learning then together everyone will enjoy the fruits of it, let\'s make it possible for the years to come.</p>', 1, '', '2021-06-12 05:13:40.421991'),
(101, 'Jacksonj', 'Prioritize', '<p>Determine your priorities and focus on them.&nbsp;</p>', 0, '', '2021-06-12 05:33:34.707168'),
(102, 'Dennis', 'Two side in every sory', '<p>\r\n\r\n</p><p>A teacher teaching math in a class of 6-year-olds.<br>asked a boy named Adi.</p><p>â€ Adi, if I give you two mangos and another two mangos. how many mangoes will you have?<br>He answered â€œ5 mangoesâ€.</p><p>She was surprised by his reply but she tried again. Now this time she uses her fingers to make him count with her.<br>â€œOk Adi, look if I give you One, Two. Two mangoes and another one-two. Two mangoes. How many mangoes will you have?â€<br>He again answered â€ five mangoesâ€</p><p>This time she gets really annoyed by his answer but she controlled her anger and remembered that his mother once told her that he likes the strawberries. So, she tried this.<br>â€œOk Adi, If I give you two strawberries and another Two strawberries. Now, how many strawberries do you have?â€<br>â€œteacher, 4 strawberriesâ€</p><p>She felt relieved that he is back on track. So, again she asked him.<br>â€œNow tell me, Adi, If I give you two mangoes and another two mangoes. how many mangoes do you have?â€<br>He answered â€ teacher, Five mangoesâ€<br>The teacher outburst in anger â€ how can you have five mangoes if I give you four mangoes?â€<br>â€œteacher, because One mango I have in my bagâ€<br>Complete silence. The teacher calms down and regrets at her anger.</p><p><strong>Moral of the Story:</strong></p><p>Two sides to every story. Never judge others. We should not make a decision for others without knowing their point of view. We make the decision on the basis of what is logic rightness i.e. what is the obvious answer and didnâ€™t try to know the practical rightness i.e. what is the actual truth.</p><br>\r\n\r\n<small><u><i><b></b><b></b></i></u></small><br><p></p>', 1, '', '2021-06-12 05:45:28.628557'),
(103, 'Dennis', 'THINK AND ASK BEFORE YOU DECIDE', '<h3>\r\n\r\n<p>This is the story of a Watchman. His life experience will restore your faith back and also teach you never to be judgmental toward anyone without knowing the full picture.</p><p>There was a Watchman who always used to open and close the gates and then greet the house owner but the owner never responds to him. The Watchman thinks his owner is a little arrogant and doesnâ€™t want to talk to some poor fellow.</p><p>Every day, after work, he searches the garbage for food. Whatsoever is left by the owners. </p><p>One day, when he was searching for the food he finds a bag full of eatables in a well-packed poly bag. He didnâ€™t understand who put it and why<u>&nbsp;</u>someone does it.</p><p>This goes on for several years until his owner has died. After his ownerâ€™s death, he searches daily but never got that bag again.</p><p>Without that food, it was again difficult for him to feed himself with the little salary he gets. So, he went to the ownerâ€™s wife to ask for a salary raise.</p><p>When he asked for the salary raise, the ownerâ€™s wife questions him why didnâ€™t he come early and had been worki<u>ng</u>&nbsp;with such a little salary.</p><p>He tells her about the polybag he used to get every day and for this reason, his salary was enough for his family. But now it stopped.</p><p>The ownerâ€™s wife got tears in her eyes and said â€ you are the fifth one, Telling this story. My husband used to help everyone, he can. Donâ€™t worry, you will have the raise.â€</p><p>Again from the next day, he starts to get the polybag with eatables at the same place. This time he understands that it must be his ownerâ€™s son.</p><p>Every day, he greets the ownerâ€™s son and even he never replied to the Watchman. One day, nearly feed up with this, he shouted aloud to the ownerâ€™s son. â€ Sir, thank youâ€.</p><p>The ownerâ€™s son turns and said â€ Sorry I didnâ€™t hear you. I have a hearing problem just like my father.â€</p><p><strong>Moral of the Story:</strong></p><p>Two sides to every story. Someone may seem arrogant, jealous, egotistic. But it will be always better to first know the two sides to every story and then reach any final decision. You may be right but you may be wrong as well. We should never be judgmental and decide the character of a person just by his behavior. </p><br>\r\n\r\n<b></b><br></h3>', 0, '', '2021-06-12 06:20:35.982803'),
(104, 'Dennis', 'NEVER TAKE THE DECISION ON THE SPUR', '<p>\r\n\r\n</p><p>Once a man was walking by his rice fields. Suddenly he saw a big creature moving in the water. He watched carefully, and shouted â€ Anacondaâ€.</p><div>It was a fat, large snake about thrice a man long, moving slowly in the rice fields. While the man waited for others to come, he saw the fat belly.</div><div></div><div>When all the farmers nearby gathered around, they started to encircle it. In the time, farmers encircled the snake, someone in the crowd shouted: â€ it has eaten a man, see the size of its stomach â€œ.</div><div></div><div>Everyone yelled, â€ Kill him, kill himâ€.</div><div></div><div>The snake was dead in the moments. The animal was torn apart, what they saw shocked them, and their head dropped with guilt. </div><div></div><div>They were eggs in the belly, she was a mother.</div><div></div><div><strong>Moral of the story:</strong></div><h2>Never take the decision on the spur. First know, then decide. Your little misjudgment might take someoneâ€™s life and fill you with guilt for the rest of your life. Never always consider<b></b> yourself to be right. There always two sides to every story.</h2><p>&nbsp;</p>\r\n\r\n<br><p></p>', 0, '', '2021-06-12 06:21:44.713271'),
(105, 'Dennis', 'RACE OF LIFE', '<p>\r\n\r\n</p><div><p>\r\n\r\n</p><h4>The<strong>&nbsp;Race of Life</strong>, Do We Actually WiN?<b></b></h4><p>. It is really an inspiring story with a moral. I hope everyone applies it and stays happy, Instead of involving in petty competition.</p><div></div><h2>Here is the short story about the Race of life</h2>\r\n\r\n<br><p></p><p>While I was riding the bike, I noticed a man in front of me, about half a mile far. I noticed the man was traveling at a speed lower than me. So, I decided to overtake him. I had about a mile to go on the road before turning off.</p><p>So I started cycling faster and faster and every block, I was gaining on him just a little bit. Just within minutes, I was about 50 m behind him, So I gather all my strength and tried hard to overtake him, and finally, I was ahead of him. It was just like the last lap of the London Olympic triathlon.</p></div><p>And, finally, I caught up with him and passed him by. Within, I felt like a winner, â€œI wonâ€. While he had no clue that we were in a race.</p><p>After I passed him, I realized that I had been so focused on competing against him that I had missed my turn, had gone nearly six blocks past it and had to turn around and go all back.</p><p>Isnâ€™t that what happens in life, we spend most of our time in competition with neighbors, friends, family, trying to outperform them, or trying to be in front of them. While you were never in the race with them.</p><p>We use most of our time and energy in competition and instead of reaching our destination, we miss out on our own paths to our destinies.</p><p><strong>Moral of the story:</strong></p><p>Unhealthy competition is a continuous process, a never-ending cycle, A race of life. No matter what you do, someone will always be ahead of you, someone with a better everything, a better job, a nicer car, wealthy, more educated, a prettier wife, a more handsome husband, good children, etc.</p><p></p><p>Feel grateful for what life has offered you, the height, weight &amp; personality. Dress well &amp; wear it proudly!. Stay focused on your path and live a healthy life. Thereâ€™s no competition in DESTINY. Run your own RACE of life and wish others WELL!</p><br>\r\n\r\n<br><p></p>', 0, '', '2021-06-12 06:48:55.213778'),
(106, 'Doreen2364', '\"Sasa Unanyemelea Bedroom Ya Baba Na Huwezi Zaa\" Kirinyaga Women Rep Trolls Governor Anne Waiguru', '<p>Earth is hard and Waiguru can tell that story perfectly. She is among the only two governors in Kenya. The other one is Charity Ngilu in Kitui county. Recently she cried about being insulted by Cate Waruguru and Kirinyaga Women Rep has come to his colleague\'s aid. She has blasted the governor for being a notorious homewrecker.<br></p><p>Speaking at a press briefing, she trashed the governor for destroying not only people\' s home but also her county. Speaking of Kirinyaga county, it\' s alleged that the health workers are demoralized the county government has refused to pay their salaries.</p><p>Since Waiguru married Kamotho 2 years ago, she is yet to give birth. It\' s alleged that she can\' t have the children. According to Ngirici, governor Waiguru have only one unborn child, the BBI document. This is the document that has changed and shaped the Kenyan political space. However, its life is hanging on a thin rope as they seek the court appeal decision to salvage the document</p><p>Ngirici is eyeing Kirinyaga gubernatorial seat, with Martha Karua also possible to be in the race. Ngirici is a staunch supporter of William Ruto, and she has fiercely defended him from the Kieleweke. She is very vocal and is quick to throw jibes to criticize Waiguru.</p><p>She has warned Waiguru against attacking Babas bedroom. According to her Waiguru relationship with Baba is a risk to Ida\' s marriage. Anne Waiguru visited Raila in his home, where they had cherry moments. She has already been to Baba\' s kitchen, table room, bedroom and her next move will be to dethrone Ida from her home.</p><p>In addition, she has cautioned her against assuming roles of Mt Kenya spokeswoman. She can\'t represent the people of Mt Kenya and should let those bestowed with the responsibility to exit first. She was among Mt Kenya leaders who blasted Justin Muturi over his coronation.</p>', 0, '', '2021-06-12 07:13:34.564988'),
(107, 'Doreen2364', '\"Sasa Unanyemelea Bedroom Ya Baba Na Huwezi Zaa\" Kirinyaga Women Rep Trolls Governor Anne Waiguru', '<p>Earth is hard and Waiguru can tell that story perfectly. She is among the only two governors in Kenya. The other one is Charity Ngilu in Kitui county. Recently she cried about being insulted by Cate Waruguru and Kirinyaga Women Rep has come to his colleague\'s aid. She has blasted the governor for being a notorious homewrecker.<br></p><p>Speaking at a press briefing, she trashed the governor for destroying not only people\' s home but also her county. Speaking of Kirinyaga county, it\' s alleged that the health workers are demoralized the county government has refused to pay their salaries.</p><p>Since Waiguru married Kamotho 2 years ago, she is yet to give birth. It\' s alleged that she can\' t have the children. According to Ngirici, governor Waiguru have only one unborn child, the BBI document. This is the document that has changed and shaped the Kenyan political space. However, its life is hanging on a thin rope as they seek the court appeal decision to salvage the document</p><p>Ngirici is eyeing Kirinyaga gubernatorial seat, with Martha Karua also possible to be in the race. Ngirici is a staunch supporter of William Ruto, and she has fiercely defended him from the Kieleweke. She is very vocal and is quick to throw jibes to criticize Waiguru.</p><p>She has warned Waiguru against attacking Babas bedroom. According to her Waiguru relationship with Baba is a risk to Ida\' s marriage. Anne Waiguru visited Raila in his home, where they had cherry moments. She has already been to Baba\' s kitchen, table room, bedroom and her next move will be to dethrone Ida from her home.</p><p>In addition, she has cautioned her against assuming roles of Mt Kenya spokeswoman. She can\'t represent the people of Mt Kenya and should let those bestowed with the responsibility to exit first. She was among Mt Kenya leaders who blasted Justin Muturi over his coronation.</p>', 0, '', '2021-06-12 07:13:40.078125');
INSERT INTO `article` (`id`, `user_id`, `title`, `body`, `status`, `ufile`, `date`) VALUES
(108, 'Doreen2364', 'Raila Tears Down Ruto Over 2022 State House Run, Hints Adapting Magufuli Strategy ', '<p>ODM leader Raila Odinga on Friday, 11 June indicated that he will be in the ballot on 2022 general election&nbsp; as he launched attacks on Deputy president William Ruto . While speaking during the burila ceremony of former Kibwezi MP Kalembe Ndile , Raila stated that he has for a long time led a coalition for progress and fighting injustice in the country and will not let the â€˜the alleged hustlers confuse the countryâ€™ . Raila hit at the DP say his claim to represent â€˜ hustlersâ€™ was aimed at hoodwinking the countryâ€™s vulnerable groups to supporting his 2022 bid.<br></p><p>Raila said that his team will use the tactics used by the late Tanzanian president John Pombe Magufuli, because it cannot be business as usual.</p><p>â€œThe have a budget of 2 trillion plus, but most of it will be stolen. We do not lack. Money is stolen. We will stop all opportunities of theft and you will see for yourselves what we can do with the little we have. Magufuli did in Tanzania in five years, we can do it too.â€</p><p>However , the ODM leader lamented that his opponents were using stolen money to create confusion in Kenyaâ€™s political environment . &nbsp;He said that he had come along way with Wiper Party leader Kalonzo Musyoka and that separating with him would be a big mistake. The former prime minister also took a swipe at former Chife Justice Willy Mutunga , saying that he denied them justice during the 2013 presidential election petition .</p><p>â€œWe have stood for justice, myself and Kalonzo. In 2013, we took evidence of electoral theft, they said we were late. Former Chief Justice Willy Mutunga dismissed us, now he is pontificating about justiceâ€¦.â€</p><p>While speaking of Mutungaâ€™s letter to Uhuru , Raila described the former CJ as an&nbsp; ahypocrite, saying his successor Justice David Maraga went on to affirm NASAâ€™s victory had been stolen in the 2017 presidential election. Raila said they had not given up on leading Kenya, because they have a plan</p><p>The burial which was attended by several other leaders including Kalonzo Musyoka was dominated with calls&nbsp; for Raila , Kalonzo and other leaders to be united . According to Kitui governor Charity Ngiru, if the leaders failed to do so, Deputy president William Ruto will have early victory .</p><p>Kalonzo &nbsp;on his side said NASA was still alive, and One Kenya Alliance (OKA) was also on the cards.&nbsp; The Wiper leader said he would not run alone, but on an alliance ticket that would swee', 0, '', '2021-06-12 07:29:13.935576'),
(109, 'Doreen2364', 'Fresh Details; Uhuru, Ruto And Muturi Set To Meet Today Over Mt Kenya Politics', '<p>The 2022 general election is so close that all eyes are on the big question of who will succeed Uhuru Kenyatta. Mt Kenya Region being his main backyard has to pick on their regions kingpin to take over the throne and represent their views well. Mt Kenya Rehion Residents have show so much interest on Dp Ruto despite him not coming from the region. This puts Muturi on the edge after he was Coronated as Uhuru\'s Successor.<br></p><p>On Saturday, June 12, politicians from three factions affiliated with President Uhuru Kenyatta, his deputy William Ruto and Speaker of the National Assembly Justin Muturi will come together to chart the future of Mount Kenya. , with various politicians vying to succeed Uhuru as the linchpin. CS Trade The meeting will take place at Lusoi Lodge in Nyeri, according to Peter Munya. The leaders come from the Gikuyu Embu and Meru Association (GEMA), one of the three important communities in the region.<br></p><p>The ceremony will take place in the presence of ten governors of the region, including Anne Waiguru (Kirinyaga), Lee Kinyanjui (Nakuru), James Nyoro (Kiambu) and Mwangi wa Iria (Murang\' a). Wa Iria and Waiguru have demonstrated against President Muturi\' s coronation, which will be a big topic of discussion</p><p>Wa Iria declined to comment on the coronation, instead downplaying the event by saying it was just a regular gathering where common issues were discussed. Choosing a successor to Uhuru will be a tough challenge for the region, especially now that DP Ruto has stepped forward and garnered support for his 2022 candidacy</p><p>Former Kiambu governor William Kabogo will also meet with leaders on the choice of Uhuru\' s successor, a major voter registration effort in the region, and trade relations between counties. Several friends of the DP, on the other hand, declined invitations to the summit, saying it will not achieve its goals.</p><p><br></p><p><br></p>', 0, '', '2021-06-12 07:32:15.262591'),
(110, 'Doreen2364', 'Fresh Details; Uhuru, Ruto And Muturi Set To Meet Today Over Mt Kenya Politics', '<p>The 2022 general election is so close that all eyes are on the big question of who will succeed Uhuru Kenyatta. Mt Kenya Region being his main backyard has to pick on their regions kingpin to take over the throne and represent their views well. Mt Kenya Rehion Residents have show so much interest on Dp Ruto despite him not coming from the region. This puts Muturi on the edge after he was Coronated as Uhuru\'s Successor.<br></p><p>On Saturday, June 12, politicians from three factions affiliated with President Uhuru Kenyatta, his deputy William Ruto and Speaker of the National Assembly Justin Muturi will come together to chart the future of Mount Kenya. , with various politicians vying to succeed Uhuru as the linchpin. CS Trade The meeting will take place at Lusoi Lodge in Nyeri, according to Peter Munya. The leaders come from the Gikuyu Embu and Meru Association (GEMA), one of the three important communities in the region.<br></p><p>The ceremony will take place in the presence of ten governors of the region, including Anne Waiguru (Kirinyaga), Lee Kinyanjui (Nakuru), James Nyoro (Kiambu) and Mwangi wa Iria (Murang\' a). Wa Iria and Waiguru have demonstrated against President Muturi\' s coronation, which will be a big topic of discussion</p><p>Wa Iria declined to comment on the coronation, instead downplaying the event by saying it was just a regular gathering where common issues were discussed. Choosing a successor to Uhuru will be a tough challenge for the region, especially now that DP Ruto has stepped forward and garnered support for his 2022 candidacy</p><p>Former Kiambu governor William Kabogo will also meet with leaders on the choice of Uhuru\' s successor, a major voter registration effort in the region, and trade relations between counties. Several friends of the DP, on the other hand, declined invitations to the summit, saying it will not achieve its goals.</p><p><br></p><p><br></p>', 0, '', '2021-06-12 07:32:18.982971'),
(111, 'Doreen2364', 'Joseph Ole Nkaissery: What Really Killed Him The Truth Unfolds', '<p>On 8th July 2017, the country woke up with the saddest news about Kenya\' s interior minister who died in hospital.<br></p><p>It was one month before the general elections that General Nkaissery was reported dead.</p><p>This news was aired out by the government and all of a sudden the country was turned into mourning.<br></p><p><b><i>Life Of Nkaissery.</i></b></p><p>Nkaissery was believed to be a nonsense politician. He was a Kenyan politician born on 28th November 1948 whereby he was a member of the parliament.</p><p>1972 he enrolled for the Kenya Army and was successfully recruited to join the Kenya Armed Forces Training college where he got military training up to the year 1984.</p><p>He was among the few selected for admission at the Defense Staff College, Military Academy in Dehra Dun, India for further training.</p><p>Major General Nkaissery served in the Kenya Defence Forces for 30 years before he retired. After retirement, Major General Nkaissery was favored to enter politics by the Maasai community in 2003 and successfully won the Member of Parliament seat of Kajiado Central under a KANU ticket. In 2007 he vied and won on an ODM ticket and also in 2013 under CORD. Joseph Nkaissery was professional and passionate in his work where he gave his best in all he did.</p><p>The experience and expertise in security affairs he had made him appointed to the position of Cabinet Secretary for Interior and Coordination of National Government in February 2014, a position he continued to serve in.</p><p>Did General Nkaissery Suffer From Any Sickness Before His Death</p><p>Nkaissery got ill at his Karen home after a public function and was rushed to Karen Hospital, where he was pronounced dead a few hours</p><p>The minister never showed any signs of sickness, he was in great health and even attended a national prayer day at Uhuru Park earlier in the day, which was led by President Uhuru. This was the last public function he attended</p><p>How could this happen? Something fishy was planned and fixed towards the minister\' s death</p><p>Even before the function, the minister is said to have had several security meetings at his office.</p><p><br></p><p>The Last Supper</p><p>According to the Kajiado senator, Peter Mositet, he said that Nkaissery was rushed to the hospital after he collapsed. This happened after he had super at his home place. His bodyguard said he also engaged himself in some exercise before taken to the hospital. Was the food taken by the minister ', 0, '', '2021-06-12 07:39:15.463561'),
(112, 'Doreen2364', 'Joseph Ole Nkaissery: What Really Killed Him The Truth Unfolds', '<p>On 8th July 2017, the country woke up with the saddest news about Kenya\' s interior minister who died in hospital.<br></p><p>It was one month before the general elections that General Nkaissery was reported dead.</p><p>This news was aired out by the government and all of a sudden the country was turned into mourning.<br></p><p><b><i>Life Of Nkaissery.</i></b></p><p>Nkaissery was believed to be a nonsense politician. He was a Kenyan politician born on 28th November 1948 whereby he was a member of the parliament.</p><p>1972 he enrolled for the Kenya Army and was successfully recruited to join the Kenya Armed Forces Training college where he got military training up to the year 1984.</p><p>He was among the few selected for admission at the Defense Staff College, Military Academy in Dehra Dun, India for further training.</p><p>Major General Nkaissery served in the Kenya Defence Forces for 30 years before he retired. After retirement, Major General Nkaissery was favored to enter politics by the Maasai community in 2003 and successfully won the Member of Parliament seat of Kajiado Central under a KANU ticket. In 2007 he vied and won on an ODM ticket and also in 2013 under CORD. Joseph Nkaissery was professional and passionate in his work where he gave his best in all he did.</p><p>The experience and expertise in security affairs he had made him appointed to the position of Cabinet Secretary for Interior and Coordination of National Government in February 2014, a position he continued to serve in.</p><p>Did General Nkaissery Suffer From Any Sickness Before His Death</p><p>Nkaissery got ill at his Karen home after a public function and was rushed to Karen Hospital, where he was pronounced dead a few hours</p><p>The minister never showed any signs of sickness, he was in great health and even attended a national prayer day at Uhuru Park earlier in the day, which was led by President Uhuru. This was the last public function he attended</p><p>How could this happen? Something fishy was planned and fixed towards the minister\' s death</p><p>Even before the function, the minister is said to have had several security meetings at his office.</p><p><br></p><p>The Last Supper</p><p>According to the Kajiado senator, Peter Mositet, he said that Nkaissery was rushed to the hospital after he collapsed. This happened after he had super at his home place. His bodyguard said he also engaged himself in some exercise before taken to the hospital. Was the food taken by the minister ', 0, '', '2021-06-12 07:39:38.892889'),
(113, 'silltermurangir', 'Peace brings people together.', '<p>The land of Tyla was a great land with different people from different ethnic groups.However some of these group\'s leaders were great enemies and this led to enemity among the people.</p><p>The king was aware but the more he tried to talk to them more and more hatred sorrounded the land.</p><p>War began and many women children were most affected while men were busy fighting.The only solution left was to annoit new leaders and also preach peace among the people.</p><p>After a period of 6 years the land was cool and people were all living together due to presence of peace.</p>', 0, '', '2021-06-12 08:00:35.867731'),
(114, 'Doreen2364', 'â€œIt\'s You To Change Not The Law\" Angry DP Ruto Tells President Uhuru', '<p>Deputy President&nbsp;William Ruto&nbsp;has left&nbsp;Kenyans&nbsp;talking after his recent remarks directed to President Uhuru Kenyatta. According to a video that is making rounds on social media, the angry&nbsp;DP&nbsp;told the Head of State that instead of changing the law he is the one to change. He cautioned leaders against proceeding with the&nbsp;Building Bridges Initiative&nbsp;(BBI) bill which is set to change part of the 2010 Kenyan Constitution.<br></p><p>The&nbsp;viral video&nbsp;of the DP lecturing his boss President Uhuru Kenyatta was posted by Mutembei News and other media houses through their official social media platforms. The&nbsp;Taka Taka&nbsp;leader made the remarks during a meeting with a group of people believed to be church leaders. The meeting took place at DP Ruto\'s Karen home, Nairobi County.<br></p><p>The seemingly religious individuals or rather a church leaders from the&nbsp;Kiambaa&nbsp;region in Kiambu County also assured the leader of the Rustler Nation that all the constituency members of Kiambaa will vote for his United Democratic Alliance (UDA) candidate. The by-elections are set to take place at a later date.</p><p>According to the video clip, the Sugoi village elder claimed that the country\'s constitution does not need to be changed in order to generate jobs for a few individuals who just care about themselves. As per reports by&nbsp;Mutembei News&nbsp;on the reactions of Kenyans, this is a case of the pot calling the kettle black. Mutembei News reported that the angry DP lectured President Uhuru Kenyatta like a kid.</p><p>â€œAngry Ruto lectures Uhuru like a kid warns him against changing the constitution. It\'s you to change, not the Law! Ruto was speaking in Karen as he met all Kiambu Church leaders who promised him all the votes in Kiambaa constituency. Kenyans are happy,â€&nbsp;Mutembei News&nbsp;posted on Facebook.</p><p>The DP took to social media platforms and informed mammoths of Railaâ€™s supporters across the country that all that is required is an economic restoration plan and the creation of jobs for the youngsters. To boost the country\'s economy, DP William Ruto told the 2022 Baba voters that the government should establish a favorable atmosphere for local and mid-level enterprises.</p>', 0, '', '2021-06-12 08:12:08.467733'),
(115, 'Jostine', 'Job hunting for a recent graduate.', '<p>Is there anything more stressing than this for almost all graduates in kenya. So I completed my diploma course in January but was supposed to complete on July last year but due to corona we had to stay at home.</p><p>So I have written cover letters and cv to more than a hundred companies and&nbsp; gone to like twenty interviews but all I got left out because of experience .</p><p>So I recently entered job haunting websites such as fuzu and LinkedIn and I can say the journey has been made easier and would recommend to other job seeking person\'s&nbsp;</p><p>Lastly I would like to encourage people not to give up on job haunting as recently I got a job in one kenya big companies because I stood with faith from God and I perfected my writing skills for the cv and cover letters.</p>', 1, '', '2021-06-12 08:23:08.781176'),
(116, 'Doreen2364', 'Muthama Reveals What The Government Fears About Ruto', '<p>Former Machakos Senator Johnston Muthama, a close ally of Deputy president William Ruto has claimed the ruling government fears Ruto\' s popularity in the country.</p><p>Decrying recent incidents where police officers stopped UDA party meetings, Muthama claimed some powerful individuals in government are hellbent in scuttling DP Ruto\' s 2022 Presidential ambitions.</p><p>\" Politicians seen to be leaning towards the government are given a free hand to hold rallies, no social distance and no masks. But those allied to the DP meet in town halls with their aspirants, the government wakes up, and realizes that coronavirus is still there. Their biggest fear, we know, is how the country has received the DP, with no coercion, no coaching, \" Mr Muthama said.</p><p>Muthama who is currently serving as UDA party chairman pointed to Ruto\' s heroic receiving in Kisumu as a clear indication the second in command is the people\' s choice come 2022.</p><p>Without backing his claims with tangible facts, Muthama claimed DP Ruto controls 60%- 70% votes in Kenya.</p><p>A number of TangaTanga politicians have equally claimed that there is a plot by those in government to confine Ruto\' s upcoming meetings to his backyard of Rift valley</p><p>They opine such plots are undemocratic and myopic\" , saying regional kingpin politics have been bypassed by tim</p><p>\" There is a myopic, undemocratic thinking in Kenya of taking us back to the era of regional kingpins confined to the region they come from, and their small, village parties. \" Nandi Senator Samson Chergagei fumed</p><p>Ruto\' s men have maintained in spite of the schemes being hatched, the second in command will emerge victorious in the 2022 general election.</p><p>Belgut Mp Nelson Koech claimed certain unnamed individuals are afraid of UDA\' s growing popularity, hence their frantic efforts to derail it\' s growth by using administration officers to scuttle the outfit\' s meetings.</p>', 0, '', '2021-06-12 08:28:31.973218'),
(117, 'Jostine', 'Body shaming', '<p>This is a vocabulary which only people who have not standard body figures example either people who are too thin or thick or ladies with no curvy hips and also affects men who have no arm muscles or big chests.</p><p>Body shaming has became very rampant with this generation which is caused by accessing people pictures through the social media platforms where the comments are very negative concerning&nbsp; a part of the body.</p><p>This generation has the mentality of every woman has to have curvy hips,big boobs and big glutes(buttocks) and the men are required to look aerobic i.e big chest and big muscles in the arm.</p><p>We should really stop body shaming as it decreases people self esteem and it may also cause suicidal thoughts to the body shamed individuals.</p>', 0, '', '2021-06-12 08:30:45.953070'),
(118, 'Doreen2364', '6 Shameful Scandals That Might Bar Ruto From Presidency In 2022', '<p>William Kipchirchir Samoei Ruto is a Kenyan politician born in Kamagut, Uasin Gishu County, on 21st December 1966. Ruto was raised by his financially impoverished parents. He attended Kerotet primary school for his primary education and earned a spot at Kapsabet Boys High School for his secondary education through his hard work.<br></p><p><br></p><p>After completing his studies, Ruto enrolled at the University of Nairobi, earning a BSc in Botany and Zoology in 1991. Ruto entered Kenyan politics in 1992 and has served in a variety of ministries throughout the country, including those of Home Affairs, Higher Education, and Agriculture.</p><p><br></p><p>Additionally, he served as Secretary- General of the KANU, the former ruling party, and later rose to prominence as the Eldoret North Constituency Member of Parliament from 2007 to 2013. Ruto is currently the Kenyan deputy president, a position he has held since 2013, during which time he has been actively involved in the delivery of services to Kenyans.</p><p><br></p><p>Additionally, Ruto has demonstrated an interest in running for president by actively campaigning for his candidacy. However, his name has been tarnished by a number of scandals, which may jeopardize his political career and ascension to the presidency in 2022. The following is a list of some of the scandals in which Ruto has been implicated.</p><p><br></p><p>Land Scandal at Weston Hotel</p><p><br></p><p>Ruto has been charged with snatching the land on which the Nairobi Weston Hotel is being built. According to the standard, a state agency was coerced into surrendering the land to Ruto because it was originally occupied by KCAA and the initial occupants were forced to relocate to a piece of land owned by the meteorological department but never occupied by KCAA.</p><p><br></p><p>In 2019, Kenya\' s land commission requested that Ruto compensate Kenyans for the land. Moments later, the DP admitted that the former inhabitants had illegally acquired the land and sold it to him, and in 2020, DP Ruto chose to pay off the land to the KCAA and become the legal owner.</p><p><br></p><p>The state agency, KCAA, rejected the compensation, stating that the hotel was illegally acquired and that the land was originally intended for headquarters and flight paths.</p><p><br></p><p>In December 2020, Ruto was fortunate to have KCB bank assist him in reclaiming Ksh1. 2 billion from a business associated with Deputy President William Ruto.</p><p><br></p><p>Land Sca', 0, '', '2021-06-12 08:33:10.548018'),
(119, 'Gitonga', 'The Merits and Demerits of Online Classes', '<p>The widespread of coronavirus has led to moving towards online classes by institutions</p><p>Although these classes are able to migrate the loss of students to some extent they have imposed major concerns as well</p><p>Online Classes are available and convenient for students sitting anywhere in the world</p><p>It has eliminated time and cost required to reach the school and prevented the loss of students even though lockdown was imposed</p><p>Though students are trying to manage this kind of study, there are some major concerns:</p><p>One of the biggest problem is the network connectivity ,it\'s not proper in many places in the world.So students are not able to connect to classes.</p><p>Another one, there\'s lack of one on one teaching where by students can\'t find time to ask difficult questions if they doubt</p><p>Prolonged uses of electronic devices has resulted to various health issues like back strains, fatigue and sight problems</p><p>Teachers and students have adopted this new model of education and are trying to get used to it every day</p><p><br></p><p><br></p>', 1, '', '2021-06-12 10:38:04.623391'),
(120, 'Doreen2364', 'DP Ruto Warned By Kikuyu\'s After He Did This', '<p>The statement was in reference to the 7M sizeable total number of registered voters in the mountain region. This means that Mt Kenya will not be backing down for any other individual come 2022.<br></p><p>According to Kabogo, the smaller vote rivers of Ruto\' s Rift Valley yard and Raila\' s Nyanza yard have no option but join and support Mt Kenya\' s choice which is the bigger river.</p><p>Political leaders from the Mount Kenya region are today convening at Lusoi Lodge in Nyeri County to hold talks on President Uhuru Kenyatta\' s succession as Raila Odinga\' s name is mentioned.</p><p>Among those who are to attend the meeting are Speaker Justin Muturi, Nakuru County Governor Lee Kinyanjui, Kirinyaga County Governor Anne Waiguru, Kiambu County Governor James Nyoro, Murang\' a County Governor Mwangi wa Iria and the host Nyeri County Governor Mutahi Kahiga. Moses Kuria among other leaders from the Central region have also been invited</p><p>The meeting comes at a time when there are high political temperatures across the nation with different political leaders regrouping to form alliances that will win the heart of common Kenyans. Leaders that have already declared their interest in succeeding President Uhuru Kenyatta are his deputy William Ruto, ANC Party leader Musalia Mudavadi, Governors Ali Hassan Joho and Wycliffe Oparanya, party leaders Musalia Mudavadi and Kalonzo Musyoka.</p><p>With the president in his corner, the former premier Raila Odinga has been eyeing the vote rich mountain to enable him beat Ruto at his own game.</p><p>This saw the president facilitate the coronation of national assembly speaker Justin Muturi. Ruto on the other hand has personally attacked the president\' s mountain yard and managed to win a number of legislators from the region.</p><p>Deputy President William Ruto\' s allied legislators have stormed the Ruaka Market to grace the Hustler Nation grand shopping festival that aims at promoting the small scale business traders in the area.<br></p>', 0, '', '2021-06-12 12:40:17.287907'),
(121, 'demondkigs', 'Denmark\'s Christian Eriksen Collapses On Field, Receives CPR As Euro 2020 Match Against Finland Is Suspended', '<p>The European Championship game between Denmark and Finland was suspended on Saturday following a terrifying scene that saw Danish midfielder Christian Eriksen receive medical attention after collapsing on the field in the first half of the game. The play was immediately stopped at Parken Stadium in Copenhagen just before the end of the first half of the Group B match-up after Eriksen, 29, collapsed on the field where he laid unresponsive.</p><p>He received 10 minutes of medical care and was given CPR as teammates surrounded him, creating a human shield. The Finland players returned to their bench before walking off the field while Eriksen was still getting treatment, as did the referees. Eriksen was taken off the field in a stretcher but images circulating on social media appeared to show the young player awake and holding his hand to his forehead.<br></p><p>They also announced that the game has been suspended and that a \"crisis meeting\" has taken place to discuss what they will do going forward. Eriksen received an overwhelming amount of support on social media from fans, players, and soccer clubs around the world.  <br></p><p><br></p>', 1, '', '2021-06-13 00:10:22.410832'),
(122, 'demondkigs', 'Waoga Kabisa, Ruto Responds to Raila\'s Remarks at Kalembe\'s Burial', '<p>Deputy President William Ruto has hit back at ODM leader Raila Odinga and Kitui Governor Charity Ngilu over their remarks in Kalembe Ndileâ€™s burial. In a strongly-worded statement, the Deputy President who was speaking on Saturday, 12 June at a funeral in Kangundo said that leaders should be concerned about how to help Kenyans and not how to clinch the top seat.<br></p><p>\"<i>I want to tell them that it is okay to come together. As they do so, the UDA party is focused on helping all Kenyan residents. Coming together to win the election will not be of use to anybody. They must first have an agenda for Kenya. You cannot unite merely because you want to defeat somebody. What if you lose? and you don\'t have an agenda, what will happen</i>?\" Ruto said.<br></p><p>The DP went on to state that the hustler nation is having an agenda for the country. He retaliated with his usual statement on adopting the bottom-up economic model. The second in command said that his model will ensure ordinary Kenyans are benefitting.<br></p><p>However, the DP warned President Uhuru Kenyatta and Raila Odinga over the BBI appeal, telling them to stop threatening the courts. Ruto said that the president should stop focusing on the BBI case and deliver the Big4 agenda. However, moments after Rutoâ€™s sentiments, ODM leader Raila Odinga took to his social media to address the issue of Uhuruâ€™s selection of judges. The ODM leader in his post said that Kenya cannot survive with supremacy wars between the executive and the Judiciary.<br></p><p>Raila on his side said that Kalembe was a true hustler who fought for the rights of the poor. He wants to hit at DP Ruto over his hustler movement terming him as a â€˜ thiefâ€™ who was confusing Kenyans.<br></p>', 0, '', '2021-06-13 00:20:12.883087'),
(123, 'demondkigs', 'Karen Nyamu\'s Late Night Post That Has Raised Concerns', '<p>Nairobi city politician and advocate Karen Nyamu has been a household name in Kenya, especially in Nairobi where she resides. The controversial woman can be described as a go-getter, as she goes for what she wants.<br></p><p>Yesterday night, Karen Nyamu hinted at wanting to see her lover, as it was her day. Apart from being a woman in politics, Karen Nyamu became a topic of controversy after she publicly posted another woman\'s husband as her baby daddy.<br></p><p>When asked why she made the bold move, Karen Nyamu stated that she wanted Kenyan musician Samidoh Muchoki to publicly acknowledge their son. Samidoh later addressed the issue and confessed to being the father of Karen Nyamu\'s son.<br></p><p>Yesterday night, Karen Nyamu took a video of her driving listening to a certain Kenyan song. In the song, a woman is heard calling her married lover, requesting to see him on Saturday, as of Sunday he will be busy with his family.<br></p><p>This song can be easily seen to be dedicated to her baby daddy Samidoh because we all know Samidoh is a married man and has a wife. What is your opinion on this? Share with us your opinion in the comment section below.<br></p>', 0, '', '2021-06-13 00:57:53.097033'),
(124, 'Dennis', 'Outstanding difference and mode of operation', '<h4>The conscious mind is like the <br>navigator or captain at the bridge of a ship. He directs the ship and signals orders to men in the <br>engine room, who in turn control all the boilers, instruments, gauges, etc. The men in the engine room <br>do not know where they are going; they follow orders. They would go on the rocks if the man on the <br>bridge issued faulty or wrong instructions based on his findings with the compass, sextant, or other <br>instruments. The men in the engine room obey him because he is in charge and issues orders, which <br>are automatically obeyed. Members of the crew do not talk back to the captain; they simply carry out <br>orders.<br>The captain is the master of his ship, and his decrees are carried out. Likewise, your conscious mind <br>is the captain and the master of your ship, which represents your body, environment, and all your <br>affairs. Your subconscious mind takes the orders you give it based upon what your conscious mind <br>believes and accepts as true.<br><br></h4>', 0, '', '2021-06-13 01:12:21.210522'),
(125, 'demondkigs', 'Revealed: DP Ruto And Uhuru Allegedly Being Together Secretly', '<p>President Uhuru Kenyatta who seems to have separated himself with the deputy president William Ruto over political difference has since been together which has been bringing alot of questions to Kenyans on who will succeed president Uhuru Kenyatta 2022.<br></p><p></p><p>Today president Uhuru Kenyatta is holding a high profile meeting with his deputy president William Ruto for the first time after a while. The two leaders have been separated after the handshake chipped in between Uhuru Kenyatta and ODM leader Raila Odinga.</p><p>The meeting will be attended by Mt Kenya leaders including Speaker of National Assembly Justin Muturi, Ann Waiguru, , Lee Kinyanjui, James Njoro, Mwangi Wa Iria among other leaders from Mt Kenya region.</p><p>Some politicians are now planning to succeed Uhuru Kenyatta as the kingpin of Mt Kenya.This will be among the agendas which will be discussed in the meeting.</p><p>The other agenda is about the coronation of the Speaker of the National Assembly who was to succeed president Uhuru Kenyatta in Mt Kenya as the spokesman. This comes after Mwangi Wa Iria and Waiguru came out against Speaker Muturi\'s coronation saying that it was not good to be cancelled.</p><p>Another agenda could be choosing a successor to Uhuru Kenyatta which might be the deputy president William Ruto. The leaders could be cathering to discuss the person who will deputize William Ruto coming 2022.</p><div></div><p>President Kenyatta has been showing some interest with DP William Ruto after a long enemity between them which was a political difference. Uhuru Kenyatta seems to be hiding his face by not showing to Kenyans that the two leaders are together.</p><p>Today meeting will be a major and a great event that Kenyans are expecting to see if the two leaders will be together or not</p><br><p></p>', 0, '', '2021-06-13 01:19:13.222947'),
(126, 'demondkigs', 'Another Scandal Hits KEMRI As Staff Go Without Medical Cover For 3 Months', '<p>From 1st March this year frontline employees at the Kenya Medical Research Institute (KEMRI) have been working with no insurance cover. An internal memo availed to Nation indicates the staff was directed to seek medical attention at their own cost to be refunded once the standoff with the current insurer has been resolved.<br></p><p></p><p>Madison Insurance Company suspended the comprehensive medical cover for KEMRI when the leading government laboratories failed to pay up to Shs 158 million for the annual premium. The Institute\'s approved annual budget for medical insurance is Shs 115 million.</p><p>Initially, KEMRI had a cover from the government medical insurer National Hospital Insurance Fund (NHIF) for a lower premium of Shs 115 million annually but in 2020 then Director Prof Yeri Kombe entered into the deal with the private insurer without consultation.</p><p>Speaking on condition of anonymity one union official said that they tried to raise the matter with Health CS Mutahi Kagwe to no avail.</p><p>\"We were getting comprehensive medical cover and even our families were getting treatment in the best hospitals in the country and even abroad only for the management to wake up one morning and stop the cover.\"</p><p>The petition written to Mutahi Kagwe by the Union of Kenya Civil Servants on behalf of KEMRI staff read in part:</p><p>\"<i>We wish to appeal to you to intervene to ensure that KEMRI does not contract a private insurer to offer medical services. Kindly note that the government through the Ministry of State for Public Service and Gender has signed a contract with NHIF to offer comprehensive cover to civil servants\"</i>.</p>The petition was not responded to and employees at Kenya\'s leading frontline laboratories today have no medical cover.<br><p></p>', 0, '', '2021-06-13 03:03:39.427482'),
(127, 'Jostine', 'Fake it till you make it ', '<p>This is one slogan that I recently heard from my age mate who was asked why she wore dress from her sister which she can\'t even afford a pair&nbsp;</p><p>As much as the slogan seemed stupid I had to aggre with her because nowdays one is judged according to the dressing code and the first impression shananiganis.</p><p>I don\'t think it\'s right to fake it but I can say it\'s good to have a positive future vision or what do you think?</p>', 0, '', '2021-06-13 09:36:35.127495'),
(128, 'collins245', 'life', '<p>\r\n\r\n\"Life changes fast. Life changes in the instant. You sit down to dinner and life as you know it ends.\"</p><h4><a target=\"_blank\" rel=\"nofollow\" href=\"https://www.newyorker.com/magazine/2017/02/13/when-things-go-missing\">When Things Go Missing by Kathryn Schulz</a></h4>Reflections on two seasons of loss<h4><a target=\"_blank\" rel=\"nofollow\" href=\"http://deadspin.com/5881337/feet-in-smoke-a-story-about-electrified-near-death\">Feet in Smoke by John Jeremiah Sullivan</a></h4>I was on the banks of the River Styx. The boat came to row me across, but . . . instead of Charon, it was Huck and Jim. Only, when Huck pulled back his hood, he was an old man . . .<h4><a target=\"_blank\" rel=\"nofollow\" href=\"http://www.theguardian.com/books/2006/oct/07/featuresreviews.guardianreview2\">House for Sale by Jonathan Franzen</a></h4>My mother\'s house, in Webster Groves, was dark except for a lamp on a timer in the living room. Letting myself inside, I went directly to the liquor shelf and poured the hammer of a drink I\'d been promising myself since before the first of my two flights...<h4><a target=\"_blank\" rel=\"nofollow\" href=\"http://www.theverge.com/2012/7/11/3116317/digital-afterlife-not-fade-away-living-dying\">Not Fade Away by Maria Bustillos</a></h4>On living, dying, and the digital afterlife<h4><a target=\"_blank\" rel=\"nofollow\" href=\"http://www.newyorker.com/magazine/2013/10/28/now-we-are-five\">Now We Are Five by David Sedaris</a></h4>On the death of a sibiling\r\n\r\n<br><p></p>', 0, '', '2021-06-13 10:21:49.034601'),
(129, 'Dennis', 'Don\'t say something you regret when angered', '<h6><p>There once was a little boy who had a very bad temper. His father decided to hand him a bag of nails and said that every time the boy lost his temper, he had to hammer a nail into the fence.</p><p>On the first day, the boy hammered 37 nails into that fence.</p><p>The boy gradually began to control his temper over the next few weeks, and the number of nails he was hammering into the fence slowly decreased. He discovered it was easier to control his temper than to hammer those nails into the fence.</p><p>Finally, the day came when the boy didnâ€™t lose his temper at all. He told his father the news and the father suggested that the boy should now pull out a nail every day he kept his temper under control.</p><p>The days passed and the young boy was finally able to tell his father that all the nails were gone. The father took his son by the hand and led him to the fence.</p><p>â€˜You have done well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wonâ€™t matter how many times you say Iâ€™m sorry, the wound is still there.\'â€</p><br></h6>', 0, '', '2021-06-13 11:55:52.917271'),
(130, 'Dennis', 'Don\'t say something you regret when angered', '<h6><p>There once was a little boy who had a very bad temper. His father decided to hand him a bag of nails and said that every time the boy lost his temper, he had to hammer a nail into the fence.</p><p>On the first day, the boy hammered 37 nails into that fence.</p><p>The boy gradually began to control his temper over the next few weeks, and the number of nails he was hammering into the fence slowly decreased. He discovered it was easier to control his temper than to hammer those nails into the fence.</p><p>Finally, the day came when the boy didnâ€™t lose his temper at all. He told his father the news and the father suggested that the boy should now pull out a nail every day he kept his temper under control.</p><p>The days passed and the young boy was finally able to tell his father that all the nails were gone. The father took his son by the hand and led him to the fence.</p><p>â€˜You have done well, my son, but look at the holes in the fence. The fence will never be the same. When you say things in anger, they leave a scar just like this one. You can put a knife in a man and draw it out. It wonâ€™t matter how many times you say Iâ€™m sorry, the wound is still there.\'â€</p><br></h6>', 0, '', '2021-06-13 11:59:25.301450'),
(131, 'Dennis', 'Tremendous power of suggestions', '<h4>You must realize by now that your conscious mind is the \"watchman at the gate,\" and its chief function <br>is to protect your subconscious mind from false impressions. You are now aware of one of the basic <br>laws of mind: Your subconscious mind is amenable to suggestion. As you know, your subconscious <br>mind does not make comparisons, or contrasts, neither does it reason and think things out for itself. <br>This latter function belongs to your conscious mind. It simply reacts to the impressions given to it by <br>your conscious mind. It does not show a preference for one course of action over another.<br>The following is a classic example of the tremendous power of suggestion. Suppose you approach a <br>timid-looking passenger on board ship and say to him something like this: \"You look very ill. How pale <br>you are! I feel certain you are going to be seasick. Let me help you to your cabin.\" The passenger <br>turns pale. Your suggestion of seasickness associates itself with his own fears and forebodings. He <br>accepts your aid down to the berth, and there your negative suggestion, which was accepted by him, <br>is realized.<br><b></b><br></h4>', 0, '', '2021-06-13 12:03:35.466074'),
(132, 'Dennis', 'Constructive and Destructive power of suggestions', '<p>Some illustrations and comments on heterosuggestion: Heterosuggestion means suggestions from <br>another person. In all ages the power of suggestion has played a part in the life and thought of man in <br>every period of time and in each country of the earth. In many parts of the world it is the controlling <br>power in religion.<br>Suggestion may be used to discipline and control ourselves, but it can also be used to take control <br>and command over others who do not know the laws of mind. In its constructive form it is wonderful <br>and magnificent. In its negative aspects it is one of the most destructive of all the response patterns of <br>the mind, resulting in patterns of misery, failure, suffering, sickness, and disaster<b></b><br></p>', 0, '', '2021-06-13 12:05:14.111270'),
(133, 'Dennis', 'The \"thank you\" technique', '<h5>In the Bible, Paul recommends that we make known our requests with praise and thanksgiving. Some <br>extraordinary results follow this simple method of prayer. The thankful heart is always close to the <br>creative forces of the universe, causing countless blessings to flow toward it by the law of reciprocal <br>relationship, based on a cosmic law of action and reaction.<br>For instance, a father promises his son a car for graduation; the boy has not yet received the car, but <br>he is very thankful and happy, and is as joyous as though he had actually received the car. He knows <br>his father will fulfill his promise, and he is full of gratitude and joy even though he has not yet received <br>the car, objectively speaking. He has, however, received it with joy and thankfulness in his mind.<br>I shall illustrate how Mr. Broke applied this technique with excellent results. He said, \"Bills are piling <br>up, I am out of work, I have three children and no money. What shall I do?\" Regularly every night and <br>morning, for a period of about three weeks, he repeated the words, \"Thank you, Father, for my <br>wealth,\" in a relaxed, peaceful manner until the feeling or mood of thankfulness dominated his mind. <br>He imagined he was addressing the infinite power and intelligence within him knowing, of course, that <br>he could not see the creative intelligence or infinite mind. He was seeing with the inner eye of spiritual <br>perception, realizing that his thought-image of wealth was the first cause, relative to the money, <br>position, and food he needed. His thought-feeling was the substance of wealth untrammeled by <br>antecedent conditions of any kind. By repeating, \"Thank you, Father,\" over and over again, his mind <br>and heart were lifted up to the point of acceptance, and when fear, thoughts of lack, poverty, and <br>distress came into his mind, he would say, \"Thank you, Father,\" as often as necessary. He knew that <br>as he kept up the thankful attitude he would recondition his mind to the idea of wealth, which is what <br>happened.<br>The sequel to his prayer is very interesting. After praying in the above-mentioned manner, he met a <br>former employer of his on the street whom he had not seen for twenty years. The man offered him a <br>very lucrative position and advanced him $500 on a temporary loan. Today, Mr. Broke is viceï¿¾president of the company for which he works. His recent remark to me was, \"I shall never forget the <br>wonders of \'Thank y', 0, '', '2021-06-13 12:10:21.428612'),
(134, 'Dennis', 'Easy does it', '<p>A house owner once remonstrated with a furnace repairman for charging two hundred dollars for <br>fixing the boiler. The mechanic said, \"I charged five cents for the missing bolt and one hundred ninetyï¿¾nine dollars and ninety-five cents for knowing what was wrong.\"<br>Similarly, your subconscious mind is the master mechanic, the all-wise one, who knows ways and <br>means of healing any organ of your body, as well as your affairs. Decree health, and your <br>subconscious will establish it, but relaxation is the key. \"Easy does it\" Do not be concerned with <br>details and means, but know the end result. Get the feel of the happy solution to your problem <br>whether it is health, finances, or employment Remember how you felt after you had recovered from a <br>severe state of illness. Bear in mind that your feeling is the touchstone of all subconscious <br>demonstration. Your new idea must be felt subjectively in a finished state, not the future, but as <br>coming about now<br></p>', 0, '', '2021-06-13 12:12:12.009997'),
(135, 'demondkigs', 'Four Things Man United Learned From England Win As Sancho Snubbed', '<p>A few eyebrows were raised ahead of kick-off when Manchester United target Jadon Sancho was left out of the squad altogether, with no news of injury or poor fitness behind his omission.<br><br>Instead it was perhaps a timely reminder of his current stock in world football, still an exceptional talent, but more so as a luxury addition to a squad rather than as a key player from the start.<br><br>Given the fee being demanded by Borussia Dortmund it is clear Ole Gunnar Solskjaer will need to make good use of Sancho if he does sign, though his arrival might not be the seismic shift some supporters are anticipating.<br></p><p>Another player on Unitedâ€™s radar this summer is Kieran Trippier as Solskjaer looks to strengthen his squad with greater attacking threat down the right flank.<br><br>However, he could also do a job on the left for United given the manner of his performance against Croatia on the weekend in place of Luke Shaw.<br><br>He might be Gareth Southgateâ€™s choice at left-back but at Old Trafford the Atletico Madrid man would very much be a reserve option, although he is perhaps a safer defensive option than Alex Telles in any absence of Shaw.<br><br>If he does return to the North West this summer Trippierâ€™s main role will be battling Wan-Bissaka for a starting spot, though it is an added bonus that he can do an effective job on the other side too.<br></p><p>After a solid end to the season Dean Henderson might very well have hoped he would be starting for England in the European Championship, but he could be one of the squad members who doesnâ€™t even get on the pitch.<br><br>Henderson is effectively the third-choice option for Southgate at the moment and could be demoted down to fourth-choice once Nick Pope returns from injury after the tournament.<br><br>In a yearâ€™s time the 24-year-old will be hoping to start for his country at the World Cup in Qatar, but for that to happen he will need to be playing almost every week next season.<br><br>He will be hoping that starting role is at Old Trafford though with little clarity over his long-term standing in the team he might well have to head elsewhere next season to keep his international ambitions alive.<br></p>', 0, '', '2021-06-13 12:16:58.059971'),
(136, 'demondkigs', 'Mt Kenya Leaders Name The Location They Will Use When Declaring The Regions Presidential Candidate', '<p>Mt Kenya leaders have finally settled to a specific venue they will use when declaring their presidential candidate and who they have high hopes with will take over the leadership mantle from President Uhuru Kenyatta.<br></p><p>After Saturday\'s meeting held in Nyeri in attendance several leaders from Mt Kenya region allied to President Uhuru Kenyatta, Agriculture Cabinet Secretary Peter Munya has revealed their next plan issuing fresh details.<br></p><p></p><p>CS Peter Munya has said that as the Mt Kenya region leaders they will be campaigning across the region going forward with a motive of uniting the region ahead of the year 2022.</p><p>The Agriculture Cabinet Secretary has disclosed that they also agreed that soon they will be meeting at Sagana State Lodge where they will decide on who will be the region\'s flagbearer to face off those eyeing for the Presidency.</p><p>Munya and who hails from Meru has informed that \"we proposed regional meetings to campaign for the elusive regional unity and a Sagana Four session by President Kenyatta for the outgoing leaderâ€™s blessing to the proposed successor.\"</p><p>However, the Agriculture CS has warned the Mt Kenya region leaders on the need to embrace unity stating that failure to unite then they should be prepared to become the opposition after President Uhuru\'s exit.</p><br><p></p>', 0, '', '2021-06-13 12:40:26.046196');
INSERT INTO `article` (`id`, `user_id`, `title`, `body`, `status`, `ufile`, `date`) VALUES
(137, 'demondkigs', 'Nairobi Senator  Reveals Why He Never Gives President Uhuru A Call But Regularly Calls DP Ruto', '<p></p><p>Nairobi Senator Johnson Sakaja has revealed his relationship with President Uhuru Kenyatta, his deputy William Ruto, and other top politicians in the country.</p><div></div><p>The vocal and youthful lawmaker opened up when he appeared on Churchill Show that aired on NTV this Sunday evening</p><p>Sakaja was talking about how they ended up forming the ruling Jubilee Party when the show host, Daniel Ndambuki alias \"Churchill\" asked him whether he still talks to DP Ruto regardless of the party issues.</p><p>Sakaja confirmed to \"Churchill\" that they are on good terms with the DP, adding that they regularly talk to each other. He said he gives DP Ruto a phone call, and the DP also calls him back.</p><p>The Senator also revealed that he also talks to President Uhuru Kenyatta, just the way he talks to his deputy, William Ruto.</p><p>However, he noted that he only sends a message to President Uhuru, and allows him to call back when he finds the time.</p><p>Sakaja believes the right protocol is when the President calls, and not one (Sakaja) calling him, which makes him send a message when he has something to tell the President.</p><p>More so, Sakaja also said he speaks to all top politicians, including ODM leader Raila Odinga, former Vice Presidents Kalonzo Musyoka, and Musalia Mudavadi, among others.</p><p>He noted that regardless of political differences, politicians are always speaking to each other. He gave an example of Mudavadi attending DP Ruto\'s daughter, June\'s wedding as an example of a different life among politicians away from politics.</p><br><p></p>', 0, '', '2021-06-13 23:32:29.493647'),
(138, 'demondkigs', 'Another EPL Star Is Rushed To The Hospital With Double Head Fracture Moments After Eriksen Collapsed', '<p>The last few hours have not been the best for the football world. This was after Former Tottenham midfielder and premier league star Christian Eriksen Collapsed during his country\'s opening football match against Finland.<br></p><p>The doctors managed to stabilize him with the former Ajax star waking up moments later. News of Eriksen\'s recovery was however short-lived after another Premier league star suffered a nasty head injury during the match between Belgium and Russia. Belgium wing-back Timothy Castagne was quickly rushed to the hospital in Zenit after Clashing with a Russian player.<br></p><p>After the match, Belgium coach Roberto Martinez confirmed that the Leicester defender was out of the tournament after suffering a double fracture on his head. \'It was really bad news, sad to see Timothy Castagne is going to be out of the tournament, He\'s had images taken, he\'s got a double fracture, and now we\'ll take the necessary treatment.\" he said.<br></p><p>Meanwhile, share with us your thoughts on the matter kindly.<br></p>', 0, '', '2021-06-13 23:42:31.828412'),
(139, 'Shee001', 'Bluetooth', '', 0, '', '2021-06-14 04:34:23.397002'),
(140, 'Shee001', 'Bluetooth', '<p>Bluetooth version 5.0</p><p>What version of Bluetooth are you using currently? We are at version 5.0, and here are some of the reasons you should consider the latest version of the 4.2 release. Version 5.0 is an upgrade of 4.2 and has numerous added advantages that will make you want to upgrade as soon as possible.</p><p><br></p><p>Why version 5.0?</p><p>The latest Bluetooth version, as mentioned earlier, has improved several items compared to other devices. These improvements include:</p><p><br></p><p>Speed â€“ did you know that this version has more rate, and can carry out transfers over a longer distance? Compared to version 4.2, it has two times more speed, four times the range, and eight times the capacity. It can allow transfers of people within a range of 240m.</p><p>Backward compatibility supports backward compatibility, meaning you can connect your new version 5.0 to the older version 4.2.&nbsp;</p><p><br></p><p>Dual audio â€“ this is a new feature that comes along with this version. One can now connect two Bluetooth enabled devices at the same time and feature them on different outputs. It is only possible with the Bluetooth version 5.0. Besides, these output devices can work even when they are in two separate rooms making it an added advantage.</p><p>&nbsp;Relation to IoT devices â€“ despite the speed, Bluetooth 5.0 allows for low energy transmissions, therefore, allowing all audible devices to communicate over low energy. For you, it means that it will have longer battery life.</p><p><br></p><p>One main shortcoming of Bluetooth version 5.0 is that it is only compatible with a few devices, which are among the iPhone 8, iPhone 8plus, iPhone x, and Samsung galaxy s8. However, the manufacturers are giving the word of introducing version 5.0 in android phones.</p><p><br></p><p>Once all devices get fully upgraded, Bluetooth generally will become more steadfast and power efficient. Upgrade now and enjoy these features from the latest release into the market.&nbsp;</p>', 0, '', '2021-06-14 04:36:12.203874'),
(141, 'Shee001', 'Bluetooth', '<p>Bluetooth version 5.0</p><p>What version of Bluetooth are you using currently? We are at version 5.0, and here are some of the reasons you should consider the latest version of the 4.2 release. Version 5.0 is an upgrade of 4.2 and has numerous added advantages that will make you want to upgrade as soon as possible.</p><p><br></p><p>Why version 5.0?</p><p>The latest Bluetooth version, as mentioned earlier, has improved several items compared to other devices. These improvements include:</p><p><br></p><p>Speed â€“ did you know that this version has more rate, and can carry out transfers over a longer distance? Compared to version 4.2, it has two times more speed, four times the range, and eight times the capacity. It can allow transfers of people within a range of 240m.</p><p>Backward compatibility supports backward compatibility, meaning you can connect your new version 5.0 to the older version 4.2.&nbsp;</p><p><br></p><p>Dual audio â€“ this is a new feature that comes along with this version. One can now connect two Bluetooth enabled devices at the same time and feature them on different outputs. It is only possible with the Bluetooth version 5.0. Besides, these output devices can work even when they are in two separate rooms making it an added advantage.</p><p>&nbsp;Relation to IoT devices â€“ despite the speed, Bluetooth 5.0 allows for low energy transmissions, therefore, allowing all audible devices to communicate over low energy. For you, it means that it will have longer battery life.</p><p><br></p><p>One main shortcoming of Bluetooth version 5.0 is that it is only compatible with a few devices, which are among the iPhone 8, iPhone 8plus, iPhone x, and Samsung galaxy s8. However, the manufacturers are giving the word of introducing version 5.0 in android phones.</p><p><br></p><p>Once all devices get fully upgraded, Bluetooth generally will become more steadfast and power efficient. Upgrade now and enjoy these features from the latest release into the market.&nbsp;</p>', 1, '', '2021-06-14 04:36:47.611225'),
(142, 'Gody254', 'Earnpro', '<p>Hi are you tired of wasting your data online without getting paid in return.here is the easiest way to make money in a simple way just by blogging, buying airtime,and spinning.</p><p>Register with us and enjoy.ðŸ’¥ðŸ’¥<i><b></b></i></p><p><br></p><p><br></p>', 1, '', '2021-06-14 07:30:53.650584'),
(143, 'steveamo4', 'THE GREATEST FEAR', '<p>The greatest FEAR in the world is of the opinions of others.<br><br>And the MOMENT you are unafraid of the crowd you are no longer a sheep.<br><br>YOU become a lion. A great roar arises in your heart, the roar of FREEDOM . <br>Make it your goal to live in FREEDOM .<br></p>', 0, '', '2021-06-16 00:07:53.041694'),
(144, 'steveamo4', 'LEARN TO VALUE YOURSELF!', '<p>No one will value you until you place a value to yourself, the worst thing that can happen to a Christian is not knowing what he/her  is made of.<br><br>What you are is directly proportional to the value you consciously place on yourself, people most time respects you because of the value they perceive around you, do not cheapen yourself. There is something in you that made you to be what you are for God, it\'s not pride but self worth, you are fearfully and wonderfully made.<br><br>LK.17:6-7 \"Are not five Sparrows sold for two farthings and none of them is forgotten by God?<br>But even the very hairs of your head are all numbered Fear not therefore,ye are of more value than many sparrows\"<br><br>The most expensive and most lucrative and amazing creature made by God is Man, God had so much value placed on a man because he created man in his own image, therefore do not accept any devaluation and intimidation from the devil,you are a complete replica of God.<br><br>If you want to be successful in whatever you do in this year 2021, place a value to yourself, understand that you are too connected to be frustrated, step up your faith and work, let this sink into your soul,to your bones and marrows,what you conceived is what you can deliver. Psalms.139:14.<br><br>Until you face this year with faith and smart work your success is a mirage, get up and charge yourself with the word of God that you are not a failure, success is your portion, Phil.4:13 \" I can do all things through Christ who strengthens me\"<br><br>I pray for you today, you will not fail, I speak to you now, receive strength,self worth,confidence and boldness,I declare 2Tim.1:7 upon your life in the name of Jesus Christ Amen Good morning and have a blessed week aheadðŸ”¥ðŸ”¥ðŸ”¥ðŸ”¥<br></p>', 1, '', '2021-06-16 00:10:40.264581'),
(145, 'steveamo4', 'HOW GAPS ARE CREATED!', '<p>Gaps are created <br>Not by â€œwhat is said â€œ<br>But by â€œHow it is said <br><br>What is said reaches the mind <br>How it is said reaches the heart<br><br>And there is no way to win the mind <br>Without winning the heart.<br>Good morning <br>Have yourself a great day.<br></p>', 0, '', '2021-06-16 00:12:21.724052'),
(146, 'steveamo4', 'BEWARE OF THE WILES OF THE DEVIL!', '<p>THE DEVIL IS 100, percent EVIL:<br>The devil is pure evil, there is nothing good about him, None of his purposes are good,<br>Now , the devil can bring good things into our lives as temptations to ensnare us, <br>He can use something positive as a trick to hide his true intentions of producing something negative, Thatâ€™s the purpose behind every temptation, <br>The devil doesnâ€™t say, lm going to tempt you to become an alcoholic, No, the devil says , my doesnâ€™t that drink look good the color, the shimmer of the ice , the warm feeling people have as they drink , the little umbrella or cherry stuck in the top , just try one, you ll like it,<br>The devil doesnâ€™t say, lm going to lead you into an affair that will destroy your marriage, No , the devil says , isnâ€™t that fine looking person? Doesnâ€™t that person seem interesting, Wouldnâ€™t you like to spend a little more time getting to know that person?<br>The devil can set up a series  of good things to lead you down the part he desires for you to walk , a part that is away from God and toward self, The devil doesnâ€™t really care how much good you experience as long as you become so wrapped up in that good feeling or good time that you fail to see that your life is about to go over a cliff, <br>good things can blind us to the real intent of the devil, we must never lose sight of the truth, however, that the devil is 100 percent evil, He is out for our complete destruction, He has no capacity to give us a blessing that has any eternal benefit associated with it, <br>My dearest brother I have experienced the the tricks of the devil the craftiness and I wish also to share with you, to guide your heart against the traps, if this message make sense to you please donâ€™t hesitate to show appreciation by sending it out to others, thanks I still remain your friend pastor Lucky, God bless you and keep you safe as you make up your mind to accept Him into your life, I love you cheers<br></p>', 0, '', '2021-06-16 00:15:24.903630'),
(147, 'Paulmwichabi01', 'How to curb drug abuse among youths', '<p>Drug abuse is one of the challenges that face youths in many countries. In my opinion just to begin with,I see Legalization of drugs will make drug use less attractive to youths and this will curb down this problem.</p><p>For instance in what was seen as an important milestone for stagnization of drug abuse in Colombia in the year 1999,Paul Amantano , the deputy director for the national organization of drug abuse gave a strong speech and if I can quote from his words, â€œToday I stand strongly to say , Legalization of drugs in Colombia has reduced the number of teens in drug use. \"</p><p>Therefore,if we can take the same note as Colombia,then Kenya is going to take a milestone in the problem of drug abuse among youths.</p><p>We can all agree without doubt, that prohibition is the mother of all this problems. For instance when most of the youths are deterred from doing something, they would rather hide in darkness and try doing it. If I can quote from the Bible, this happened also in the garden of Eden when Adam and Eve were told not to eat the fruit from the tree of the center, they went ahead to eat the fruit and that\'s what happens to the youths today.</p><p>Therefore, when drugs will be legalized,they will be less attractive to the youths hence reducing substance abuse in the country.</p>', 2, '', '2021-06-16 04:51:36.112095'),
(148, 'Doreen2364', 'Ruto Confident In Hustler Support As A List Of CS\'s Seeking Elective Seats Emerges', '<p>As the country slowly approaches the 2022 general elections, interested parties are braising themselves for what will be the most competitive general elections yet. Some top Cabinet secretaries have shown interest in elective seats and are set to act on the same.<br><br>It is said that at least 11 CSs, six PSs, another 11 CASs, ambassadors and various heads of commissions are seeking elective posts in the upcoming 2022 general elections. Some of these individuals are said to be Deputy President loyalists who have since been sidelined in the President Uhuru Kenyatta- led government.<br><br>According to reliable sources, some of those planning to leave have been rendered lame- ducks as the head of state assigns their roles to military men. A large number of the government officials are from the vote- rich Mt Kenya and Rift Valley regions.<br><br>Among those likely to exit before the next elections are; Peter Munya (Agriculture), James Macharia (Infrastructure), Mutahi Kagwe (Health), Ukur Yattani (Treasury), Charles Keter (Energy), Eugene Wamalwa (Devolution), Simon Chelugui (Labour), Sicily Kariuki (Water) and John Munyes (Petroleum).<br><br>Also on the list is; Tourism CS Najib Balala who is set to go for the Mombasa seat while Keriako Tobiko (Environment) is seeking to unseat his sister, Peris Tobiko, in Kajiado East. As for the all powerful CS, Fred Matiang\' i (Interior), it has been rumoured that he might run for a political office.<br><br>Dr Ruto has in the past stated that he has held night meetings with government officials who are too scared to openly support him due to fear of harassment by state agents.<br><br>\" Because of the nature of the politics that if you are seen with William Ruto, the DCI will be on your case, many of them prefer that we have these meetings in private, \" the DP said in April. He added that when the time comes, Kenyans will be shocked by the revelation of the people backing his \" Hustler Movement\" narrative.<br></p>', 2, '', '2021-06-16 06:56:31.217972'),
(149, 'Doreen2364', 'Ruto Confident In Hustler Support As A List Of CS\'s Seeking Elective Seats Emerges', '<p>As the country slowly approaches the 2022 general elections, interested parties are braising themselves for what will be the most competitive general elections yet. Some top Cabinet secretaries have shown interest in elective seats and are set to act on the same.<br><br>It is said that at least 11 CSs, six PSs, another 11 CASs, ambassadors and various heads of commissions are seeking elective posts in the upcoming 2022 general elections. Some of these individuals are said to be Deputy President loyalists who have since been sidelined in the President Uhuru Kenyatta- led government.<br><br>According to reliable sources, some of those planning to leave have been rendered lame- ducks as the head of state assigns their roles to military men. A large number of the government officials are from the vote- rich Mt Kenya and Rift Valley regions.<br><br>Among those likely to exit before the next elections are; Peter Munya (Agriculture), James Macharia (Infrastructure), Mutahi Kagwe (Health), Ukur Yattani (Treasury), Charles Keter (Energy), Eugene Wamalwa (Devolution), Simon Chelugui (Labour), Sicily Kariuki (Water) and John Munyes (Petroleum).<br><br>Also on the list is; Tourism CS Najib Balala who is set to go for the Mombasa seat while Keriako Tobiko (Environment) is seeking to unseat his sister, Peris Tobiko, in Kajiado East. As for the all powerful CS, Fred Matiang\' i (Interior), it has been rumoured that he might run for a political office.<br><br>Dr Ruto has in the past stated that he has held night meetings with government officials who are too scared to openly support him due to fear of harassment by state agents.<br><br>\" Because of the nature of the politics that if you are seen with William Ruto, the DCI will be on your case, many of them prefer that we have these meetings in private, \" the DP said in April. He added that when the time comes, Kenyans will be shocked by the revelation of the people backing his \" Hustler Movement\" narrative.<br></p>', 2, '', '2021-06-16 06:57:04.016634'),
(150, 'steveamo4', '', 'The story of the Naked Woman:<br><br>A fully naked British goes up in a taxi whose driver is a Chinese. He looked at her from top to bottom and several times.<br><br>The worried woman asks:<br>Have you ever seen a naked woman?<br><br>Chinese taxi driver answers:<br>- I don\'t look at you because you\'re naked. I\'m worried because I\'m watching and watching and I don\'t see where you have the money to pay me.<br><br>MORAL LESSON:<br>You have to be like the Chinese!<br>Focus on your business and not distractions!', 2, '', '2021-06-16 09:16:15.629309'),
(151, 'steveamo4', 'NEVER MISTAKE GODLINESS', '<p></p><p>ðŸ”¥People will get to the \'TOP\' through compromise, immorality, all sorts of mischief and even by grieving God and say it was \'GOD\'S FAVOUR\' that lifted them to that level.</p>\r\n<p>It\'s not only God that lifts men or makes them affluent and influential,even the devil uses his own strategies to do the same(Matt 4:8-9)</p>\r\n<p>Friends,when it\'s God\'s favour,it doesn\'t SMELL OF SIN,glorify you or glorify satan in any way.</p>\r\n<p>Be careful what you call GOD\'S FAVOUR-It might just be a BAIT from the devil to LURE YOU INTO THE PIT.</p>\r\n<p>If he could try to TEMPT JESUS to bow down to him just for the sake of worldly power and affluence,what makes you think he won\'t actually tempt you with it so that you just bow down to him.</p>\r\n<p>Remember GOD SENDS RAIN to the righteous and the wicked but that does not mean He favours wickedness or the wicked,they just thrive by the mercies of God.</p>\r\n<p>Remember that the wealth of the wicked is stored up for the <a target=\"_blank\" rel=\"nofollow\" href=\"http://righteous.In\">righteous.In</a> time to come,that wealth they acquired through whatever compromised way will SOMEHOW be turned over to the righteous-GOD KNOWS HOW.</p>\r\n<p>IF THEY CALL IT GOD\'S FAVOUR,LET THEM BE PREPARED TO SEE THAT WEALTH OR THAT POSITION THEY ACQUIRED BEING MIRACULOUSLY TURNED TO GOD\'S KINGDOM OR FOR GOD\'S GLORY SOMEHOW .ðŸŽ¤</p>\r\n<br><p></p>', 2, '', '2021-06-16 09:17:52.901419'),
(152, 'steveamo4', 'TRUST AND OBEY', '<p>When you feel uncomfortable about something, it is because your innermost self knows the truth and the truth wants to reveal itself to you. The problem is... you don\'t trust your own self. Trust is the same as knowing yourself.  YOU MUST KNOW WHO YOU AREâ€¦ Your deepest self!  ðŸ’ƒðŸ»<br></p>', 2, '', '2021-06-16 09:20:18.583666'),
(153, 'Brayo4321', 'God protects His Child. ', '<p>God used a number of experiences to prepare me so that He could then bless others through my intercessions. They helped me to see both the importance and power of intercessory prayer. The first of these experiences happened in the wintertime. For a number of days I had been studying the biblical concept of faith. While scripture speaks of vast numbers of people having had their lives ruled by distrust of God and unbelief it also reveals how certain persons acquired a living faith by developing an unfaltering trust in our heavenly father and in the power of His Holy Spirit. I decided to keep thanking God for all the many times in my life when His Spirit had given me faith and asked Him to increase it. That particular morning in my devotions I read the experience of Philip in Acts 8 where an angel told him to go south of Jerusalem on the road to Gaza.&nbsp;</p>', 2, '', '2021-06-16 10:08:00.289439'),
(154, 'boshdrip', 'Why training your employee is important', '<p><b>What is the importance of employee training</b>?</p><p>Training is important because it represents a good opportunity for employees to grow their knowledge base and improve their job skills to become more effective in the workplace. Despite the cost of training for employees, the return on investment is immense if it is consistent.</p><p><br></p><p>There are several reasons it is important for employers to initiate training programs for their employees, such as:</p><p><br></p><p>It improves skills and knowledge</p><p>Employee training programs help improve the knowledge and skills of employees to match the various changes in the industry. These improvements will positively affect the productivity of workers, which can increase the profits and efficiency of an organization. Some of the things employees may learn through training include work ethics, human relations and safety.</p><p><br></p><p>It satisfies the recommendations of performance appraisals.</p><p>When an organization\'s employee performance appraisals suggest the need for improvement on a particular subject or skill, training programs can be organized for staff members to help satisfy this requirement. Training can therefore address an identified problem area and work toward a solution.</p>', 2, '', '2021-06-16 13:28:38.168921'),
(155, 'boshdrip', 'Why training your employee is important', '<p><b>What is the importance of employee training</b>?</p><p>Training is important because it represents a good opportunity for employees to grow their knowledge base and improve their job skills to become more effective in the workplace. Despite the cost of training for employees, the return on investment is immense if it is consistent.</p><p><br></p><p>There are several reasons it is important for employers to initiate training programs for their employees, such as:</p><p><br></p><p>It improves skills and knowledge</p><p>Employee training programs help improve the knowledge and skills of employees to match the various changes in the industry. These improvements will positively affect the productivity of workers, which can increase the profits and efficiency of an organization. Some of the things employees may learn through training include work ethics, human relations and safety.</p><p><br></p><p>It satisfies the recommendations of performance appraisals.</p><p>When an organization\'s employee performance appraisals suggest the need for improvement on a particular subject or skill, training programs can be organized for staff members to help satisfy this requirement. Training can therefore address an identified problem area and work toward a solution.</p>', 2, '', '2021-06-16 14:05:17.725433'),
(156, 'Dennis', 'Death of Florence Aluodo', '<p><br><br>2017 Female aspirant Florence Aluodo, who vied for the position of women representative in Siaya county, is dead.<br><br>Mrs Aluodo died due to Covid-19 complications while receiving treatment at Mater Hospital in Nairobi. She has been in and out of hospital for quite some time.<br><br>Aluodo vied as an Independent candidate after decamping from Orange Democratic Movement (ODM) over claims of shambolic nominations.<br><br>Mrs Aluodo competed against women representative Christine Ombaka and lost to her during the 2017 general election. <br><br>She campaigned alongside ODM leader Raila Odinga first cousin former Gem MP Jakoyo Midiwo and Former Rarieda MP Nicholas Gumbo.<br><br>Aluodo was eulogised by Siaya residents and politicians in social media accounts as a dedicated team leader.<br><br>Siaya senator James Orengo on his Twitter account said he was shocked to receive the news of the passing on of Florence Aluodo.<br><br>He eulogised her as a fantastic organizer of grassroot &amp; community projects.<br><br>â€œShe had so much promise but the cruel hand of death has taken her away. May the family get the strength &amp; fortitude to bear the loss,â€read part of Orengoâ€™s tweet.<br><br>On her side, Ombaka, the current Siaya County women representative, eulogised her as a very strong political leader in the country.<br><br>â€œWe contested together in 2013 and 2017 for the Woman rep position and still we remained friends. Its God who giveth and takethâ€ wrote Ombaka on her Twitter account<br></p>', 2, '', '2021-06-16 14:07:21.743311'),
(157, 'steveamo4', 'WHEN NEVER TO REBUKE!', '<p>Never when in authority rebuke anyone in anger, but only when anger has passed away; and so shall the rebuke bring forth good fruit. Many decisions made in anger are later regrettable.<br></p>', 2, '', '2021-06-16 14:10:29.931832'),
(158, 'steveamo4', 'WHEN NEVER TO REBUKE!', '<p>Never when in authority rebuke anyone in anger, but only when anger has passed away; and so shall the rebuke bring forth good fruit. Many decisions made in anger are later regrettable.<br></p>', 2, '', '2021-06-16 14:10:30.663793'),
(159, 'Kipletting', 'Introduction To Coding with PHP', 'Introduction To Coding with PHP Introduction To Coding with PHP Introduction To Coding with PHP', 2, '', '2021-06-17 22:13:31.707282');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `bannerid` double NOT NULL,
  `bannerdesc` varchar(100) NOT NULL,
  `bannerhtml` text NOT NULL,
  `banneractive` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `belaview`
--

CREATE TABLE `belaview` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `belaview`
--

INSERT INTO `belaview` (`id`, `post_id`, `user_id`) VALUES
(11, 8, 'Kipletting'),
(12, 5, 'Kipletting'),
(13, 6, 'Kipletting');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `user_id` varchar(500) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `category` varchar(5000) NOT NULL,
  `ufile` varchar(1500) NOT NULL,
  `meta_keyword` varchar(1000) NOT NULL,
  `meta_desc` varchar(1000) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `postdate` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `user_id`, `title`, `details`, `category`, `ufile`, `meta_keyword`, `meta_desc`, `status`, `postdate`) VALUES
(58, 'Jostine', 'Losing weight struggles by youths.', '', 'Education', '', 'Losing weight.', 'Losing weight hustles by youths.', 2, '2021-06-09 05:56:44.795158'),
(59, 'Ashaheis', 'Everything will be fine..just believe ðŸ˜Š', '', 'Relationship', '', 'Positivity', 'In every hardship be Positive and everything will turn out great', 2, '2021-06-09 06:14:16.153781'),
(60, 'Jumavincent', 'Education ', '', 'Education', '', 'Wamalwa kijana high school ', 'The school is located in Bungoma county kanduyi constituency ', 2, '2021-06-09 06:37:13.378896'),
(61, 'discodisco', 'All-round growth', '', 'Education', '', 'Society', 'Understanding money', 2, '2021-06-09 07:15:36.337097'),
(62, 'Dennis', 'Call to be a follower of jesus', '', 'Education', '', 'Gospel', 'Christianity is following Jesus christ', 2, '2021-06-09 07:17:25.137104'),
(63, 'Scovian', 'Cooking', '', 'Education', '', 'Food', 'How to prepare soft chapati', 2, '2021-06-09 07:23:38.137606'),
(64, 'Scovian', 'God', '', 'Education', '', 'Bible study', 'Why we should trust in God', 2, '2021-06-09 07:26:57.909936'),
(66, 'Nikita22', 'The man', '', 'Relationship', '', 'Comedy, comic, love, quotes', 'The man who marries a beautiful woman ', 2, '2021-06-09 08:32:14.905177'),
(67, 'Omollo254', 'Sweet love story', '', 'Relationship', '', 'Love', 'Love in the jungle.', 2, '2021-06-09 08:46:12.342359'),
(68, 'Gloire', 'Zitahazari', '', 'Relationship', '', 'Mapenzi', 'Mapenzi ya ua', 2, '2021-06-09 08:50:33.416203'),
(69, 'Anghelmuchy', 'Mathematics', '', 'Education', '', 'School', 'How to pass', 2, '2021-06-09 08:55:42.680526'),
(70, 'Dianah', 'I KNOW YOU', '', 'Relationship', '', 'Love', 'A secret love affair', 2, '2021-06-09 09:02:47.876081'),
(71, 'Dennis', 'ARE YOU FEARLESSNESS OR BRAVE', '', 'Education', '', 'Fear ', 'Fearless or brave?? Let\'s find out', 2, '2021-06-09 09:26:49.121126'),
(72, 'Allanoh', 'Love poem', '', 'Relationship', '', 'Love', '\"anticipation  I Dream Of The Day That You Are Freed So That My Passion You Can Feed My Loins Burn With Strong Desire My Heart Swells With A Burning Fire.  The Touch Of Your Hand Against My Skin Brings To My Face A Lustful Grin The Thought Of All The Things We\'ll Do Your Deepest Desire Will Of Course Come True.  Your Arms Will Once Again Hold Me And I Will Beg So Passionately For You To Never Let Me Go And We Will Rock Gently To And Fro.  Your Lips Will Touch Mine And I Will Quiver For My Desire Will Make You Shiver I Doubt We\'ll Make It Through The Night Without Some Squeals Of Pure Delight.  So Think On My Love Of That Wonderful Day When I Can Look At You And Say I Want More Than Anything Right Here Right Now, Make My Body Sing.\"', 2, '2021-06-09 11:08:19.353347'),
(73, 'Jsilver', 'Me', '', 'Relationship', '', 'Love', 'True love never die', 2, '2021-06-09 11:10:32.274585'),
(74, 'Gitonga', 'Prayer works', '', 'Technology', '', 'School', 'Living a Godly life in school ', 2, '2021-06-09 11:44:26.830642'),
(75, 'VivianAnyango', 'Love of God', '', 'Relationship', '', 'Love', 'Love was created by God in this first place', 2, '2021-06-09 12:24:25.999746'),
(76, 'earnwithme', 'Love is not a scam', '', 'Relationship', '', 'Love', 'When love hits you good,it finds you all messed up.its never a good timer you need to adjust your time to love', 2, '2021-06-09 13:59:41.904580'),
(77, 'silltermurangir', 'Love is bey', '', 'Relationship', '', 'Love', 'be', 2, '2021-06-09 14:52:24.603666'),
(78, 'silltermurangir', 'Love is not a game', '', 'Relationship', '', 'Love', 'Sometimes we love just for fun', 2, '2021-06-09 14:54:22.399408'),
(79, 'Zkazungu', 'Food safety', '', 'Technology', '', 'Food', 'Food safety', 2, '2021-06-10 01:31:46.606371'),
(80, 'silltermurangir', 'Body health', '', 'Education', '', 'Food', 'Eating a well balanced meal eg,rice,meat,and cabbges followed by fruits.', 2, '2021-06-10 01:35:11.089927'),
(81, 'collins245', 'FOOD AND NEUTRITION', '', 'Education', '', 'FOOD', 'YOUR DIET', 2, '2021-06-10 03:33:36.659006'),
(82, 'Cherylll', 'EVEN IN MY OWN RACE,I LOST IT', '', 'Relationship', '', 'SELF INSECURITIES', 'We all have those moments when we are at our lowest in life. Going through the worst but would still choose not to tell a soul because they all just fail to understand and seem un bothered anyway.', 2, '2021-06-10 05:37:04.682561'),
(83, 'Scovian', 'How to maintain your family', '', 'Relationship', '', 'Relationship', 'How to be a good wife.', 2, '2021-06-10 06:19:57.455044'),
(84, 'steveamo4', 'THE POWER OF SUCCESSFUL SUPERNATURAL CONCEPTION', '', 'Education', '', 'Successful, Supernatural, Conception', 'An introduction to Successful Supernatural Conception', 2, '2021-06-10 09:19:39.878109'),
(85, 'steveamo4', 'THE POWER OF SUCCESSFUL SUPERNATURAL CONCEPTION', '', 'Education', '', 'Successful, Supernatural, Conception', 'An introduction to Successful Supernatural Conception', 2, '2021-06-10 09:21:57.057010'),
(87, 'Silvermuc', 'Ugali', '', 'Technology', '', 'Food ðŸ² ', 'Just the love of food', 2, '2021-06-10 11:03:54.258879'),
(88, 'Amylia', 'Love  freely', '', 'Relationship', '', 'Love', 'Love ', 2, '2021-06-10 14:33:49.846685'),
(89, 'Samlaura254', 'Lawama', '', 'Technology', '', 'Food', 'Food', 2, '2021-06-10 14:51:10.595375'),
(90, 'marthamay', 'Schools alleviate foolishness', '', 'Education', '', 'School', 'This is an institution where ignorance and mediocrity is alleviated.', 2, '2021-06-10 16:12:23.488954'),
(91, 'Kipngetichbett', 'Diet', '', 'Education', '', 'Food', 'Healthy eating', 2, '2021-06-11 01:03:50.874805'),
(92, 'marthamay', 'Sex is sweet', '', 'Relationship', '', 'Sex', 'Choose sex', 2, '2021-06-11 02:31:27.818296'),
(93, 'sharon', 'How to loos weight.', '', 'Technology', '', 'Food.', 'The kind of food you should eat to loos weight.', 2, '2021-06-12 06:06:57.521076'),
(94, 'Jostine', 'How to make food tasty with natural things.', '', 'Education', '', 'Food', 'Healthy eating', 2, '2021-06-13 09:54:57.909906'),
(95, 'steveamo4', 'LEADERSHIP WISDOM', '', 'Relationship', '', 'Leadership, Wisdom', 'Leadership means influencing people to fulfill a goal; Wisdom is the right application of knowledge', 2, '2021-06-14 00:24:42.042052'),
(96, 'Prinzvin', 'SUCCESS IN HAPPINESS', '', 'Education', '', 'Happiness', 'Happiness this an emotional feeling that characterized by the feeling of joy ,satisfaction and fulfilment of the needs', 2, '2021-06-14 05:36:01.076203'),
(97, 'Prinzvin', 'SUCCESS IN HAPPINESS', '', 'Education', '', 'Happiness', 'Happiness this an emotional feeling that characterized by the feeling of joy ,satisfaction and fulfilment of the needs', 2, '2021-06-14 05:36:01.317071'),
(98, 'Prinzvin', 'SUCCESS IN HAPPINESS', '', 'Relationship', '', 'Happiness', 'Happiness this an emotional feeling that characterized by the feeling of joy ,satisfaction and fulfilment of the needs', 2, '2021-06-14 05:37:55.424034'),
(99, 'Gody254', 'Motivation skills', '', 'Education', '', 'Education', 'Being the real you', 2, '2021-06-14 07:41:57.167058'),
(100, 'NegraJamu', 'love', '', 'Education', '', 'Love', 'Love stories', 2, '2021-06-14 13:19:48.704621'),
(101, 'Paulmwichabi01', 'Relationship gone wrong', '', 'Relationship', '', 'Love', 'Zari leaves Diamond', 2, '2021-06-15 12:41:58.233217'),
(102, 'Kipletting', 'Study ', '', 'Technology', '', 'Accc', 'True', 0, '2021-06-16 05:17:07.581802'),
(103, 'Brayo4321', 'Roger Morneau. ', '', 'Education', '', 'Food', 'If you do not work , you should not eat. ', 0, '2021-06-16 10:02:31.887562'),
(104, 'Kipletting', 'Introduction To Coding with PHP', '', 'Education', '', 'food', 'This is the best blog', 0, '2021-06-17 21:39:44.425453'),
(105, 'Kipletting', 'Something great for a test', 'Something great for a testSomething great for a testSomething great for a testSomething great for a test', 'Technology', '', 'food', 'This is the best blog', 0, '2021-06-17 21:41:00.144832');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `cat_name`) VALUES
(2, 'Technology'),
(3, 'Education'),
(4, 'Relationship');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `code` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `comment`) VALUES
(1, 'Kenya Shillings', 'KES', ''),
(2, 'Australian Dollar', 'AUD', ''),
(3, 'Brazilian Real', 'BRL', ''),
(4, 'Canadian Dollar', 'CAD', ''),
(5, 'Czech Koruna', 'CZK', ''),
(6, 'Danish Krone', 'DKK', ''),
(7, 'Euro', 'EUR', ''),
(8, 'Thai Baht', 'THB', ''),
(9, 'Hong Kong Dollar', 'HKD', ''),
(10, 'Hungarian Forint', 'HUF', ''),
(11, 'Israeli New Sheqel', 'ILS', ''),
(12, 'Japanese Yen', 'JPY', ''),
(13, 'Malaysian Ringgit', 'MYR', ''),
(14, 'Mexican Peso', 'MXN', ''),
(15, 'Norwegian Krone', 'NOK', ''),
(16, 'New Zealand Dollar', 'NZD', ''),
(17, 'Philippine Peso', 'PHP', ''),
(18, 'Polish Zloty ', 'PLN', ''),
(19, 'Pound Sterling', 'GBP', ''),
(20, 'Russian Ruble', 'RUB', ''),
(21, 'Singapore Dollar', 'SGD', ''),
(22, 'Swedish Krona', 'SEK', ''),
(23, 'Swiss Franc', 'CHF', ''),
(24, 'Taiwan New Dollar', 'TWD', ''),
(26, 'Turkish Lira', 'TRY', '');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `ufile` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id`, `title`, `date`, `ufile`) VALUES
(4, 'Profitable Chicken Business', '2021-06-08 05:14:04.745170', '6834Profitable chicken business.pdf'),
(5, 'Cleaning Company', '2021-06-08 05:14:54.612125', '3072Steps of Starting a cleaning Company.pdf'),
(6, 'How to avoid business Failure', '2021-06-08 05:15:47.859760', '1557Reasons a business will fail and how to avoid it.pdf'),
(7, 'Keeping your Business Organized', '2021-06-08 05:16:31.390499', '9999Strategies to keep a small business Organized.pdf'),
(8, 'Starting Business with Low Capital', '2021-06-08 05:18:12.108844', '3570Start a business in 2021 with few resources you have.pdf'),
(9, 'Business Ideas to Venture Into', '2021-06-08 05:20:54.672867', '7972BUSINESS IDEAS TO VENTURE INTO IN 2021.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `emailtext`
--

CREATE TABLE `emailtext` (
  `id` int(6) NOT NULL,
  `code` varchar(50) NOT NULL,
  `etext` text NOT NULL,
  `emailactive` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emailtext`
--

INSERT INTO `emailtext` (`id`, `code`, `etext`, `emailactive`) VALUES
(1, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \r\n\r\nRegards\r\nEarnPro  Agencies', 1),
(2, 'FORGOTPASSWORD', 'Hi, \r\nYou have requested a password on our website and therefore we have sent the password on this email. If you haven\'t do it please ignore the email.\r\n\r\nRegards\r\nEarnPro Agencies', 1),
(5, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(6, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(7, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \r\n\r\nRegards\r\nEarnPro  Agencies', 1),
(8, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(9, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \r\n\r\nRegards\r\nEarnPro  Agencies', 1),
(10, 'NEWMEMBER', 'You have got new order, bingo!', 1),
(11, 'SIGNUP', 'This email is the confirmation for your order you have just signed up. Thank you for your interest. Our team welcomes you to our website. \r\n\r\nRegards\r\nEarnPro  Agencies', 1);

-- --------------------------------------------------------

--
-- Table structure for table `helabiz`
--

CREATE TABLE `helabiz` (
  `id` int(11) NOT NULL,
  `user_id` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `body` varchar(2500) NOT NULL,
  `view` int(11) NOT NULL,
  `pay` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helabiz`
--

INSERT INTO `helabiz` (`id`, `user_id`, `title`, `body`, `view`, `pay`) VALUES
(5, '0', 'Decagon has launched DevConnect for Austin, TX ', '“The software engineers from Decagon required very little to no guidance on the complex projects we had for fortune 500 companies. This helps us save time and focus on other business needs” \r\n“The software engineers from Decagon required very little to no guidance on the complex projects we had for fortune 500 companies. This helps us save time and focus on other business needs” \r\n“The software engineers from Decagon required very little to no guidance on the complex projects we had for fortune 500 companies. This helps us save time and focus on other business needs” ', 1, 1),
(6, '0', 'Speed up your website by loading CKEditor from CDN', 'In case of setting any of the options above, it is highly recommended to download locally the same CKEditor package that is loaded from CDN in order to copy included configuration files and use them as base files for adding additional changes.\r\nIn case of setting any of the options above, it is highly recommended to download locally the same CKEditor package that is loaded from CDN in order to copy included configuration files and use them as base files for adding additional changes.\r\nIn case of setting any of the options above, it is highly recommended to download locally the same CKEditor package that is loaded from CDN in order to copy included configuration files and use them as base files for adding additional changes.', 1, 0),
(8, 'Kipletting', 'What has changed? ', 'Welcome to our recruiting process for SQ009! \r\nWe are excited that you have chosen to launch your software engineering with Decagon. In a few weeks, you could potentially begin a life-changing journey towards becoming a software engineer. We have redesigned our recruiting process to make it more seamless, accessible and inclusive of more technical support. This is to ensure that you get all the support you need to get into our program.\r\n', 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mpesa_online`
--

CREATE TABLE `mpesa_online` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `MerchantRequestID` varchar(255) DEFAULT NULL,
  `CheckoutRequestID` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `MpesaReceiptNumber` varchar(255) DEFAULT NULL,
  `TransactionDate` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mpesa_online`
--

INSERT INTO `mpesa_online` (`id`, `user_id`, `MerchantRequestID`, `CheckoutRequestID`, `Amount`, `MpesaReceiptNumber`, `TransactionDate`, `PhoneNumber`, `Username`) VALUES
(44, 169, '10874-29486902-1', 'ws_CO_09062021124447208779', '200', 'PF94WYUBZM', '20210609124454', '254708027090', 'Jostine'),
(45, 170, '61923-29859289-1', 'ws_CO_09062021124506435618', '200', 'PF93WYV20J', '20210609124518', '254703200733', 'Bena1234'),
(46, 187, '6059-18571862-1', 'ws_CO_09062021125313434321', '200', 'PF93WZ9RG9', '20210609125340', '254704554281', 'Ashaheis'),
(47, 199, '7753-30366929-1', 'ws_CO_09062021125811938488', '200', 'PF90WZI3TS', '20210609125818', '254720052468', '0720052468'),
(48, 218, '90145-29884066-1', 'ws_CO_09062021130254569679', '200', 'PF98WZQEHE', '20210609130303', '254721906650', 'lilianakantana'),
(49, 230, '90154-29889404-1', 'ws_CO_09062021130710060063', '200', 'PF90WZYENM', '20210609130741', '254724689381', 'Marie254'),
(50, 259, '9083-30386955-1', 'ws_CO_09062021132118571547', '200', 'PF94X0NPCG', '20210609132203', '254743775695', 'RitaCatherine'),
(51, 272, '10887-29536243-1', 'ws_CO_09062021132343867180', '200', 'PF90X0RRIK', '20210609132417', '254707571207', 'Edith28'),
(52, 286, '6052-18623948-1', 'ws_CO_09062021133345314639', '200', 'PF94X1982G', '20210609133402', '254758098858', 'Ngasharr'),
(53, 213, '90150-29923963-1', 'ws_CO_09062021133411404557', '200', 'PF90X19W3C', '20210609133425', '254711369236', 'VivianAnyango'),
(54, 309, '6052-18624678-1', 'ws_CO_09062021133418410637', '200', 'PF96X1AB8I', '20210609133436', '254746806637', 'Joel46'),
(55, 344, '14243-30245971-1', 'ws_CO_09062021134637510413', '200', 'PF94X1WA94', '20210609134652', '254768814928', '0797206252'),
(56, 333, '2516-29550571-1', 'ws_CO_09062021134752673357', '200', 'PF98X1Y7US', '20210609134758', '254728320791', 'DAVIDR'),
(57, 367, '7752-30438649-1', 'ws_CO_09062021135322975208', '200', 'PF92X28CPM', '20210609135338', '254759150183', 'Mwarabu'),
(58, 323, '61939-29953006-1', 'ws_CO_09062021135756017518', '200', 'PF92X2GPBA', '20210609135815', '254745167636', 'Dennis'),
(59, 337, '9076-30447484-1', 'ws_CO_09062021140723895929', '200', 'PF98X2X4QA', '20210609140734', '254715341602', 'discodisco'),
(60, 410, '2516-29596400-1', 'ws_CO_09062021142338848098', '200', 'PF95X3Q33H', '20210609142409', '254711237307', 'Eropiyia'),
(61, 424, '14241-30307026-1', 'ws_CO_09062021143330138594', '200', 'PF99X46PB5', '20210609143341', '254727658869', 'Mosemosesi'),
(62, 428, '90150-30003878-1', 'ws_CO_09062021143600842353', '200', 'PF91X4AZ8B', '20210609143613', '254706581342', 'sharon'),
(63, 439, '9082-30506477-1', 'ws_CO_09062021145252666538', '200', 'PF92X53PTM', '20210609145258', '254743641209', 'Danson'),
(64, 425, '6059-18732535-1', 'ws_CO_09062021145735436129', '200', 'PF90X5BW40', '20210609145746', '254742337389', 'Fidelomollo'),
(65, 462, '14234-30363999-1', 'ws_CO_09062021151818317735', '200', 'PF92X6BQ4W', '20210609151826', '254794424071', 'Nikita22'),
(66, 476, '7759-30579284-1', 'ws_CO_09062021154230460423', '200', 'PF98X7IJFQ', '20210609154256', '254113375959', 'Anghelmuchy'),
(67, 477, '61927-30089063-1', 'ws_CO_09062021154450286682', '200', 'PF98X7M5W4', '20210609154458', '254768696377', 'Gloire'),
(68, 482, '2501-29712800-1', 'ws_CO_09062021155615346625', '200', 'PF95X86MF1', '20210609155632', '254758875157', 'royalalphah'),
(69, 491, '61916-30155274-1', 'ws_CO_09062021163544014314', '200', 'PF99XA7CLV', '20210609163600', '254740076533', 'Allanoh'),
(70, 517, '61933-30250566-1', 'ws_CO_09062021174614793297', '200', 'PF97XEBEYV', '20210609174640', '254758873491', 'Jsilver'),
(71, 284, '90142-30265562-1', 'ws_CO_09062021175539271090', '200', 'PF96XEWL9C', '20210609175547', '254759502223', 'Farida'),
(72, 524, '9081-30767753-1', 'ws_CO_09062021180820427261', '200', 'PF95XFQT9D', '20210609180827', '254707408217', 'Richard'),
(73, 530, '90156-30299373-1', 'ws_CO_09062021181921169650', '200', 'PF92XGIG6I', '20210609181946', '254707635346', 'rentah'),
(74, 523, '100132-19380392-1', 'ws_CO_09062021183337263232', '200', 'PF94XHIK8I', '20210609183404', '254705622341', 'Gitonga'),
(75, 558, '100134-19574140-1', 'ws_CO_09062021203207466091', '200', 'PF91XQ8SBP', '20210609203217', '254710113662', 'earnwithme'),
(76, 497, '7764-31113639-1', 'ws_CO_09062021214246606953', '200', 'PF99XTLJV1', '20210609214257', '254795880775', 'LauraMackenzie'),
(77, 573, '9065-31130466-1', 'ws_CO_09062021220348526325', '200', 'PF97XU9KP5', '20210609220405', '254703888343', 'Patrick'),
(78, 599, '76485-212398-1', 'ws_CO_10062021074559313480', '200', 'PFA6XYTRSU', '20210610074647', '254723335720', 'Zkazungu'),
(79, 603, '36248-199813-1', 'ws_CO_10062021083354946954', '200', 'PFA0Y0JHDM', '20210610083402', '254721351679', 'steveamo4'),
(80, 604, '29981-283048-1', 'ws_CO_10062021084840713117', '200', 'PFA1Y15IZX', '20210610084930', '254729147173', 'Mutamba'),
(81, 611, '49462-348044-1', 'ws_CO_10062021103831849253', '200', 'PFA5Y5YPYD', '20210610103854', '254706360117', 'Nerste'),
(82, 615, '24577-349795-1', 'ws_CO_10062021104852928410', '200', 'PFA5Y6FQTF', '20210610104859', '254792983715', 'Odhiambo'),
(83, 184, '80807-451138-1', 'ws_CO_10062021110938264948', '200', 'PFA0Y7ELEK', '20210610110951', '254707650105', 'Kipngetichbett'),
(84, 628, '49453-600031-1', 'ws_CO_10062021140942404735', '200', 'PFA7YFXZEB', '20210610140950', '254112156831', 'Silvermuc'),
(85, 639, '22418-837448-1', 'ws_CO_10062021161629759132', '200', 'PFA2YM8MII', '20210610161651', '254768315451', 'Amylia'),
(86, 572, '68231-978763-1', 'ws_CO_10062021181109230829', '200', 'PFA9YSWNC5', '20210610181124', '254757575004', 'Samlaura254'),
(87, 499, '8639-1300299-1', 'ws_CO_10062021230019198743', '200', 'PFA4Z8LW62', '20210610230034', '254717111929', 'marthamay'),
(88, 668, '55051-618823-1', 'ws_CO_11062021145144555137', '200', 'PFB5ZVJV7H', '20210611145150', '254712429475', 'Doreen2364'),
(89, 671, '60229-776109-1', 'ws_CO_11062021165349618954', '200', 'PFB311VZKF', '20210611165406', '254718228602', 'Vivian'),
(90, 677, '29739-1249199-1', 'ws_CO_11062021215012075246', '200', 'PFB71KVA5P', '20210611215019', '254740723867', 'Luckyoty'),
(91, 679, '81351-1241819-1', 'ws_CO_11062021220016958124', '200', 'PFB71L7KZN', '20210611220027', '254797594781', 'Cathrine001'),
(92, 680, '55071-1301618-1', 'ws_CO_11062021224415663307', '200', 'PFB51M8SJH', '20210611224428', '254701868918', 'symonk'),
(93, 582, '81351-1869375-1', 'ws_CO_12062021115011074662', '200', 'PFC220BJKA', '20210612115020', '254741518250', 'Jacksonj'),
(94, 714, '19511-3472690-1', 'ws_CO_13062021134231262567', '200', 'PFD03HUT1U', '20210613134247', '254748855689', 'Joygacheri'),
(95, 715, '81485-3523722-1', 'ws_CO_13062021142433141370', '200', 'PFD33JV2AN', '20210613142444', '254759952547', 'Annpeter'),
(96, 718, '7451-3475603-1', 'ws_CO_13062021145055653493', '200', 'PFD13L5OHV', '20210613145102', '254799566736', 'mosesnyaga'),
(97, 434, '55052-4196681-1', 'ws_CO_13062021230149416994', '200', 'PFD24AOTU0', '20210613230202', '254798469636', 'HawiLynne'),
(98, 730, '78077-4410191-1', 'ws_CO_14062021103740805370', '200', 'PFE44MDI0W', '20210614103752', '254724838526', 'VeroMutuva'),
(99, 735, '78087-4704200-1', 'ws_CO_14062021143226875726', '200', 'PFE04XS3PC', '20210614143234', '254727924229', 'elsanella'),
(100, 724, '19509-5500926-1', 'ws_CO_14062021201436602160', '200', 'PFE15J94Z9', '20210614201443', '254702687290', 'NegraJamu'),
(101, 741, '40618-5518940-1', 'ws_CO_14062021210854528009', '200', 'PFE75MDULL', '20210614210903', '254706018043', 'Dizaina1'),
(102, 355, '6065-6714183-1', 'ws_CO_15062021192750579178', '200', 'PFF56UZMAH', '20210615192809', '254791953137', 'Paulmwichabi01'),
(103, 745, '81356-7408390-1', 'ws_CO_16062021075441565997', '200', 'PFG37936GH', '20210616075453', '254796652524', 'Felix10lynn'),
(104, 750, '78085-7834613-1', 'ws_CO_16062021163211113925', '200', 'PFG67WQR0E', '20210616163218', '254713816684', 'Brayo4321');

-- --------------------------------------------------------

--
-- Table structure for table `network`
--

CREATE TABLE `network` (
  `id` int(11) NOT NULL,
  `air_net` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `network`
--

INSERT INTO `network` (`id`, `air_net`) VALUES
(1, 'Safaricom');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `posteddate` date NOT NULL,
  `valid` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `currency` text NOT NULL,
  `details` text NOT NULL,
  `tax` double NOT NULL DEFAULT 0,
  `mpay` double NOT NULL DEFAULT 0,
  `sbonus` double DEFAULT 0,
  `cdate` date NOT NULL,
  `active` int(1) NOT NULL DEFAULT 1,
  `level1` double NOT NULL DEFAULT 0,
  `level2` double NOT NULL DEFAULT 0,
  `level3` double NOT NULL DEFAULT 0,
  `level4` double NOT NULL DEFAULT 0,
  `level5` double NOT NULL DEFAULT 0,
  `level6` double NOT NULL DEFAULT 0,
  `level7` double NOT NULL DEFAULT 0,
  `level8` double NOT NULL DEFAULT 0,
  `level9` double NOT NULL DEFAULT 0,
  `level10` double NOT NULL DEFAULT 0,
  `level11` double NOT NULL DEFAULT 0,
  `level12` double NOT NULL DEFAULT 0,
  `level13` double NOT NULL DEFAULT 0,
  `level14` double NOT NULL DEFAULT 0,
  `level15` double NOT NULL DEFAULT 0,
  `level16` double NOT NULL DEFAULT 0,
  `level17` double NOT NULL DEFAULT 0,
  `level18` double NOT NULL DEFAULT 0,
  `level19` double NOT NULL DEFAULT 0,
  `level20` double NOT NULL DEFAULT 0,
  `gateway` int(1) NOT NULL DEFAULT 3,
  `validity` int(5) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `currency`, `details`, `tax`, `mpay`, `sbonus`, `cdate`, `active`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`, `level9`, `level10`, `level11`, `level12`, `level13`, `level14`, `level15`, `level16`, `level17`, `level18`, `level19`, `level20`, `gateway`, `validity`) VALUES
(19, 'Diamond', 200, 'KES', 'Diamond Package', 0, 300, 0, '2021-06-07', 1, 100, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `paymentgateway`
--

CREATE TABLE `paymentgateway` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymentgateway`
--

INSERT INTO `paymentgateway` (`id`, `Name`, `status`, `comment`, `date`) VALUES
(1, 'Mpesa', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(6) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `payment_amount` double NOT NULL DEFAULT 0,
  `payment_status` int(1) NOT NULL DEFAULT 0,
  `itemid` varchar(25) NOT NULL,
  `createdtime` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `userid`, `payment_amount`, `payment_status`, `itemid`, `createdtime`) VALUES
(45, '497', 300, 1, '', '2021-06-15 15:20:30.000000'),
(44, '497', 300, 1, '', '2021-06-13 12:07:19.000000'),
(43, '677', 310, 1, '', '2021-06-12 15:23:39.000000'),
(42, '587', 500, 1, '', '2021-06-09 22:47:44.000000'),
(46, '134', 100, 0, '', '2021-12-01 10:25:20.000000'),
(47, '134', 100, 0, '', '2022-02-18 06:40:39.000000'),
(48, '134', 100, 0, '', '2022-02-18 06:48:54.000000'),
(49, '134', 100, 0, '', '2022-02-18 06:53:01.000000'),
(50, '134', 100, 0, '', '2022-02-18 06:53:16.000000');

-- --------------------------------------------------------

--
-- Table structure for table `paypalpayments`
--

CREATE TABLE `paypalpayments` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `transacid` text NOT NULL,
  `price` double DEFAULT 0,
  `currency` text NOT NULL,
  `date` date NOT NULL,
  `cod` int(1) NOT NULL DEFAULT 0,
  `renew` int(1) NOT NULL DEFAULT 0,
  `renacid` int(9) NOT NULL COMMENT 'Package choosen at renew time, id of package',
  `pckid` double NOT NULL,
  `gateway` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id` int(11) NOT NULL,
  `pin_code` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id`, `pin_code`) VALUES
(33, 'PR1OK75PEB6QNYL'),
(36, 'rergrer'),
(40, 'fgsdgrg'),
(42, 'PRU3KCQT7IHTZW0'),
(44, 'PRF9RSAQ8UOP2ZD'),
(45, 'PRVS4D7O5ZBY9SC'),
(46, 'PRON7R89O5ZIZEH'),
(47, 'PRYZWMM0QVE8T2P'),
(48, 'PR1ERRXCPE8I40N'),
(49, 'PR97LIV8EVT1FP0');

-- --------------------------------------------------------

--
-- Table structure for table `segments`
--

CREATE TABLE `segments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `segments`
--

INSERT INTO `segments` (`id`, `name`, `color`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'Ksh 200', 'blue', 200, NULL, '2021-01-28 17:41:24'),
(2, 'Ksh 30', 'orange', 30, NULL, NULL),
(3, 'Ksh 500', 'red', 500, NULL, NULL),
(4, 'Ksh 700', 'red', 700, NULL, NULL),
(5, 'Ksh 800', 'pink', 800, NULL, NULL),
(6, 'Ksh 900', 'brown', 900, NULL, NULL),
(7, 'Ksh 1500', 'green', 1500, NULL, NULL),
(8, 'Ksh 2000', 'purple', 2000, NULL, NULL),
(9, 'Ksh 40', 'white', 40, NULL, NULL),
(10, 'Ksh 3000', 'orange', 3000, NULL, NULL),
(11, 'Ksh 4000', 'orange', 4000, NULL, NULL),
(12, 'Ksh 50', 'red', 50, NULL, NULL),
(13, 'Ksh 0', 'grey', 0, NULL, NULL),
(14, 'Ksh 40', 'purple', 40, NULL, NULL),
(15, 'Ksh 60', 'white', 60, NULL, NULL),
(16, 'Ksh 80', 'purple', 80, NULL, NULL),
(17, 'Ksh 250', 'blue', 250, NULL, NULL),
(18, 'Ksh 450', 'purple', 450, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `email` varchar(100) NOT NULL DEFAULT 'Enter Your E-Mail Address',
  `sno` int(9) NOT NULL,
  `wlink` varchar(100) NOT NULL DEFAULT 'www.yourwebsite.com',
  `invoicedetails` text NOT NULL,
  `coname` text NOT NULL,
  `fblink` text NOT NULL,
  `twitterlink` text NOT NULL,
  `paypalid` text NOT NULL,
  `maintain` int(1) NOT NULL DEFAULT 0,
  `alwdpayment` int(11) NOT NULL DEFAULT 0 COMMENT 'user will get payment via paypal or via payment in bank account.',
  `minmobile` double NOT NULL,
  `maxmobile` double NOT NULL,
  `footer` varchar(50) NOT NULL,
  `header` varchar(50) NOT NULL,
  `payzaid` varchar(128) NOT NULL DEFAULT 'Not Available',
  `solidtrustid` varchar(128) NOT NULL DEFAULT 'Not Available',
  `solidbutton` varchar(128) NOT NULL DEFAULT 'Not Available',
  `blog_status` int(11) NOT NULL,
  `airtime_status` int(1) NOT NULL DEFAULT 0,
  `ads_status` int(1) NOT NULL DEFAULT 0,
  `art_status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`email`, `sno`, `wlink`, `invoicedetails`, `coname`, `fblink`, `twitterlink`, `paypalid`, `maintain`, `alwdpayment`, `minmobile`, `maxmobile`, `footer`, `header`, `payzaid`, `solidtrustid`, `solidbutton`, `blog_status`, `airtime_status`, `ads_status`, `art_status`) VALUES
('support@earnpro.co.ke', 0, 'https://earnpro.co.ke', 'Lower Kabete, Nairobi KE', 'Earnpro Agencies', 'https://fb.com/', 'https://twitter.com/', 'support@earnpro.co.ke', 0, 1, 0, 0, 'Â©EarnPro Agencies 2021', 'EarnPro', 'Payza', 'Solid', 'Button', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spingrids`
--

CREATE TABLE `spingrids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loss` decimal(11,2) NOT NULL DEFAULT 0.00,
  `gain` decimal(11,2) NOT NULL DEFAULT 0.00,
  `count` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spingrids`
--

INSERT INTO `spingrids` (`id`, `amount`, `loss`, `gain`, `count`, `created_at`, `updated_at`) VALUES
(14, '100', 50.00, 50.00, 73, NULL, NULL),
(15, '30', 20.00, 20.00, 98, NULL, NULL),
(16, '10', 10.00, 10.00, 11, NULL, NULL),
(17, '20', 10.00, 10.00, 576, NULL, NULL),
(18, '50', 30.00, 30.00, 19, NULL, NULL),
(19, '0', 0.00, 0.00, 2, NULL, NULL),
(20, '40', 20.00, 20.00, 6, NULL, NULL),
(21, '400', 200.00, 200.00, 3, NULL, NULL),
(22, '450', 230.00, 230.00, 7, NULL, NULL),
(23, '500', 250.00, 250.00, 3, NULL, NULL),
(24, '200', 100.00, 100.00, 2, NULL, NULL),
(25, '80', 40.00, 40.00, 2, NULL, NULL),
(26, '250', 130.00, 130.00, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spinnings`
--

CREATE TABLE `spinnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `spin_id` bigint(20) UNSIGNED NOT NULL,
  `count` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `amount` decimal(11,2) NOT NULL,
  `winning` decimal(11,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spinnings`
--

INSERT INTO `spinnings` (`id`, `user_id`, `spin_id`, `count`, `type`, `amount`, `winning`, `status`, `created_at`, `updated_at`) VALUES
(775, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(776, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(777, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(778, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(779, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(780, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(781, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(782, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(783, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(784, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(785, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(786, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(787, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(788, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(789, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(790, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(791, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(792, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(793, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(794, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(795, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(796, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(797, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(798, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(799, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(800, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(801, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(802, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(803, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(804, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(805, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(806, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(807, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(808, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(809, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(810, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(811, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(812, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(813, 87, 14, 1, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(814, 87, 14, 2, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(815, 87, 14, 3, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(816, 87, 14, 4, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(817, 87, 14, 5, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(818, 87, 14, 6, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(819, 87, 14, 7, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(820, 87, 14, 8, 'Normal', 0.00, 50.00, 2, NULL, NULL),
(821, 87, 14, 9, 'Normal', 0.00, 50.00, 1, NULL, NULL),
(822, 87, 14, 10, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(823, 87, 15, 1, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(824, 87, 15, 2, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(825, 87, 15, 3, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(826, 87, 15, 4, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(827, 87, 15, 5, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(828, 87, 14, 11, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(829, 87, 14, 12, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(830, 87, 14, 13, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(831, 87, 14, 14, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(832, 87, 14, 15, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(833, 92, 14, 16, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(834, 92, 14, 17, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(835, 92, 14, 18, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(836, 92, 14, 19, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(837, 92, 14, 20, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(838, 92, 14, 21, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(839, 92, 14, 22, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(840, 92, 15, 6, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(841, 90, 15, 7, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(842, 90, 16, 1, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(843, 90, 16, 2, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(844, 90, 16, 3, 'Normal', 10.00, 10.00, 1, NULL, NULL),
(845, 90, 16, 4, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(846, 90, 16, 5, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(847, 92, 14, 23, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(848, 92, 14, 24, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(849, 92, 14, 25, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(850, 92, 14, 26, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(851, 92, 14, 27, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(852, 88, 15, 8, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(853, 92, 14, 28, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(854, 92, 14, 29, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(855, 92, 14, 30, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(856, 92, 14, 31, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(857, 92, 14, 32, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(858, 92, 14, 33, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(859, 92, 14, 34, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(860, 92, 14, 35, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(861, 92, 14, 36, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(862, 92, 14, 37, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(863, 101, 15, 9, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(864, 102, 15, 10, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(865, 102, 17, 1, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(866, 102, 16, 6, 'Normal', 10.00, 10.00, 1, NULL, NULL),
(867, 102, 17, 2, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(868, 102, 16, 7, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(869, 102, 17, 3, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(870, 102, 17, 4, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(871, 102, 17, 5, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(872, 102, 17, 6, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(873, 102, 17, 7, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(874, 102, 17, 8, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(875, 102, 16, 8, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(876, 102, 14, 38, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(877, 102, 14, 39, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(878, 102, 14, 40, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(879, 102, 14, 41, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(880, 102, 14, 42, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(881, 102, 14, 43, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(882, 102, 14, 44, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(883, 102, 18, 1, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(884, 102, 17, 9, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(885, 102, 17, 10, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(886, 102, 16, 9, 'Normal', 10.00, 10.00, 1, NULL, NULL),
(887, 102, 15, 11, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(888, 102, 16, 10, 'Normal', 10.00, 10.00, 2, NULL, NULL),
(889, 102, 19, 1, 'Normal', 1.00, 0.00, 2, NULL, NULL),
(890, 102, 17, 11, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(891, 102, 14, 45, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(892, 102, 14, 46, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(893, 102, 14, 47, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(894, 102, 14, 48, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(895, 102, 14, 49, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(896, 102, 14, 50, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(897, 102, 14, 51, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(898, 102, 14, 52, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(899, 102, 14, 53, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(900, 102, 18, 2, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(901, 102, 17, 12, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(902, 102, 17, 13, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(903, 102, 17, 14, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(904, 103, 15, 12, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(905, 104, 15, 13, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(906, 111, 15, 14, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(907, 114, 15, 15, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(908, 114, 14, 54, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(909, 120, 15, 16, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(910, 169, 15, 17, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(911, 187, 15, 18, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(912, 187, 17, 15, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(913, 187, 17, 16, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(914, 187, 17, 17, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(915, 199, 15, 19, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(916, 218, 15, 20, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(917, 230, 15, 21, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(918, 229, 15, 22, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(919, 219, 15, 23, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(920, 225, 15, 24, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(921, 170, 15, 25, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(922, 259, 15, 26, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(923, 333, 15, 27, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(924, 333, 17, 18, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(925, 333, 17, 19, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(926, 333, 17, 20, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(927, 367, 15, 28, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(928, 323, 15, 29, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(929, 323, 15, 29, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(930, 329, 15, 30, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(931, 323, 17, 21, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(932, 323, 17, 22, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(933, 323, 17, 23, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(934, 329, 17, 24, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(935, 329, 17, 25, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(936, 329, 17, 26, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(937, 309, 15, 31, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(938, 309, 17, 27, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(939, 309, 17, 28, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(940, 309, 18, 3, 'Normal', 50.00, 30.00, 1, NULL, NULL),
(941, 309, 18, 4, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(942, 309, 18, 5, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(943, 309, 18, 6, 'Normal', 50.00, 30.00, 1, NULL, NULL),
(944, 309, 18, 7, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(945, 309, 18, 8, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(946, 309, 18, 9, 'Normal', 50.00, 30.00, 1, NULL, NULL),
(947, 337, 15, 32, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(948, 309, 17, 29, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(949, 374, 15, 33, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(950, 424, 15, 34, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(951, 374, 17, 30, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(952, 374, 17, 31, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(953, 374, 17, 32, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(954, 430, 15, 35, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(955, 401, 15, 36, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(956, 309, 17, 33, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(957, 309, 17, 34, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(958, 401, 17, 35, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(959, 309, 17, 36, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(960, 309, 17, 37, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(961, 415, 15, 37, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(962, 309, 17, 38, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(963, 309, 17, 39, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(964, 309, 18, 10, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(965, 309, 18, 11, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(966, 309, 17, 40, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(967, 439, 15, 38, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(968, 425, 15, 39, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(969, 137, 15, 40, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(970, 462, 15, 41, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(971, 462, 17, 41, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(972, 470, 15, 42, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(973, 476, 15, 43, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(974, 482, 15, 44, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(975, 482, 15, 44, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(976, 491, 15, 46, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(977, 496, 15, 47, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(978, 517, 15, 48, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(979, 284, 15, 49, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(980, 524, 15, 50, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(981, 530, 15, 51, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(982, 522, 15, 52, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(983, 523, 15, 53, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(984, 533, 15, 54, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(985, 482, 17, 42, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(986, 482, 17, 43, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(987, 482, 17, 44, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(988, 558, 15, 55, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(989, 558, 17, 45, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(990, 558, 17, 46, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(991, 558, 17, 47, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(992, 428, 15, 56, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(993, 560, 15, 57, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(994, 497, 15, 58, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(995, 428, 17, 48, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(996, 428, 17, 49, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(997, 428, 17, 50, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(998, 517, 17, 51, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(999, 517, 17, 52, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1000, 517, 17, 53, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1001, 560, 17, 54, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1002, 560, 17, 55, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1003, 560, 17, 56, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1004, 286, 15, 59, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1005, 599, 15, 60, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1006, 323, 18, 12, 'Normal', 50.00, 30.00, 1, NULL, NULL),
(1007, 323, 18, 13, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(1008, 323, 18, 14, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(1009, 323, 15, 61, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1010, 408, 15, 62, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1011, 408, 17, 57, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1012, 491, 14, 55, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1013, 615, 15, 63, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1014, 615, 17, 58, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1015, 613, 15, 64, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1016, 184, 15, 65, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1017, 184, 15, 65, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1018, 616, 15, 67, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1019, 470, 17, 59, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1020, 603, 15, 68, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1021, 603, 14, 56, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1022, 184, 17, 60, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1023, 184, 17, 61, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1024, 184, 17, 62, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1025, 323, 14, 57, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(1026, 628, 15, 69, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1027, 134, 14, 58, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1028, 134, 14, 59, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1029, 134, 14, 60, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(1030, 410, 15, 70, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1031, 572, 15, 71, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1032, 408, 17, 63, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1033, 408, 17, 64, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1034, 408, 17, 65, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1035, 408, 17, 66, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1036, 408, 17, 67, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1037, 408, 17, 68, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1038, 323, 14, 61, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1039, 639, 14, 62, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1040, 639, 14, 63, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(1041, 639, 14, 64, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1042, 639, 14, 65, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1043, 639, 14, 66, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(1044, 639, 14, 67, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1045, 639, 15, 72, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1046, 499, 15, 73, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1047, 499, 17, 69, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1048, 499, 17, 70, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1049, 499, 17, 71, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1050, 428, 17, 72, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1051, 428, 17, 73, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1052, 428, 17, 74, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1053, 428, 17, 75, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1054, 323, 18, 15, 'Normal', 50.00, 30.00, 1, NULL, NULL),
(1055, 184, 17, 76, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1056, 184, 17, 77, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1057, 184, 17, 78, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1058, 184, 17, 79, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1059, 184, 17, 80, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1060, 184, 17, 81, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1061, 184, 17, 82, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1062, 184, 17, 83, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1063, 184, 17, 84, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1064, 184, 17, 85, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1065, 184, 17, 86, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1066, 184, 17, 87, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1067, 184, 17, 88, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1068, 184, 17, 89, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1069, 184, 17, 90, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1070, 184, 17, 91, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1071, 184, 17, 92, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1072, 428, 17, 93, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1073, 615, 17, 94, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1074, 615, 17, 95, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1075, 615, 17, 96, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1076, 615, 17, 97, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1077, 615, 17, 98, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1078, 184, 17, 99, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1079, 615, 17, 100, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1080, 615, 17, 101, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1081, 615, 17, 102, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1082, 615, 17, 103, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1083, 615, 17, 104, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1084, 615, 17, 105, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1085, 615, 17, 106, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1086, 615, 17, 107, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1087, 615, 17, 108, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1088, 615, 17, 109, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1089, 615, 17, 110, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1090, 615, 17, 111, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1091, 615, 17, 112, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1092, 615, 17, 113, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1093, 615, 17, 114, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1094, 615, 17, 115, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1095, 615, 17, 116, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1096, 615, 17, 117, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1097, 615, 17, 118, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1098, 615, 17, 119, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1099, 615, 17, 120, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1100, 615, 17, 121, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1101, 615, 17, 122, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1102, 615, 17, 123, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1103, 615, 17, 124, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1104, 615, 17, 125, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1105, 615, 17, 126, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1106, 615, 17, 127, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1107, 615, 17, 128, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1108, 184, 17, 129, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1109, 184, 17, 130, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1110, 184, 17, 131, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1111, 184, 17, 132, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1112, 184, 17, 133, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1113, 184, 17, 134, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1114, 668, 15, 74, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1115, 428, 17, 135, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1116, 668, 17, 136, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1117, 323, 18, 16, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(1118, 676, 15, 75, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1119, 428, 17, 137, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1120, 428, 17, 138, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1121, 428, 20, 1, 'Normal', 40.00, 20.00, 2, NULL, NULL),
(1122, 428, 17, 139, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1123, 428, 17, 140, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1124, 428, 17, 141, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1125, 428, 17, 142, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1126, 428, 17, 143, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1127, 428, 17, 144, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1128, 677, 15, 76, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1129, 679, 15, 77, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1130, 680, 15, 78, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1131, 615, 17, 145, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1132, 615, 17, 146, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1133, 677, 17, 147, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1134, 677, 17, 148, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1135, 677, 17, 149, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1136, 323, 14, 68, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1137, 582, 15, 79, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1138, 323, 17, 150, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1139, 428, 17, 151, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1140, 428, 17, 152, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1141, 428, 17, 153, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1142, 428, 17, 154, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1143, 428, 17, 155, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1144, 428, 17, 156, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1145, 428, 18, 17, 'Normal', 50.00, 30.00, 2, NULL, NULL),
(1146, 428, 17, 157, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1147, 428, 17, 158, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1148, 428, 17, 159, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1149, 428, 17, 160, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1150, 428, 17, 161, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1151, 428, 17, 162, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1152, 428, 17, 163, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1153, 428, 17, 164, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1154, 560, 17, 165, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1155, 560, 17, 166, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1156, 560, 17, 167, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1157, 560, 17, 168, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1158, 560, 17, 169, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1159, 560, 17, 170, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1160, 560, 17, 171, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1161, 560, 17, 172, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1162, 560, 17, 173, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1163, 497, 17, 174, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1164, 497, 17, 175, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1165, 497, 17, 176, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1166, 497, 17, 177, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1167, 497, 15, 80, 'Normal', 25.00, 20.00, 2, NULL, NULL),
(1168, 497, 17, 178, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1169, 497, 17, 179, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1170, 323, 17, 180, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1171, 691, 15, 81, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1172, 695, 15, 82, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1173, 695, 17, 181, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1174, 695, 14, 69, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(1175, 695, 21, 1, 'Normal', 400.00, 200.00, 2, NULL, NULL),
(1176, 695, 22, 1, 'Normal', 450.00, 230.00, 2, NULL, NULL),
(1177, 695, 22, 2, 'Normal', 450.00, 230.00, 2, NULL, NULL),
(1178, 695, 22, 3, 'Normal', 450.00, 230.00, 1, NULL, NULL),
(1179, 695, 22, 4, 'Normal', 450.00, 230.00, 2, NULL, NULL),
(1180, 695, 22, 5, 'Normal', 450.00, 230.00, 2, NULL, NULL),
(1181, 695, 22, 6, 'Normal', 450.00, 230.00, 1, NULL, NULL),
(1182, 695, 23, 1, 'Normal', 500.00, 250.00, 2, NULL, NULL),
(1183, 695, 23, 2, 'Normal', 500.00, 250.00, 2, NULL, NULL),
(1184, 695, 21, 2, 'Normal', 400.00, 200.00, 2, NULL, NULL),
(1185, 695, 24, 1, 'Normal', 200.00, 100.00, 2, NULL, NULL),
(1186, 695, 14, 70, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1187, 695, 18, 18, 'Normal', 50.00, 30.00, 1, NULL, NULL),
(1188, 695, 25, 1, 'Normal', 80.00, 40.00, 2, NULL, NULL),
(1189, 695, 20, 2, 'Normal', 40.00, 20.00, 2, NULL, NULL),
(1190, 695, 17, 182, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1191, 603, 14, 71, 'Normal', 100.00, 50.00, 2, NULL, NULL),
(1192, 497, 14, 72, 'Normal', 100.00, 50.00, 1, NULL, NULL),
(1193, 497, 17, 183, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1194, 497, 17, 184, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1195, 497, 17, 185, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1196, 497, 17, 186, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1197, 497, 17, 187, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1198, 497, 17, 188, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1199, 497, 17, 188, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1200, 372, 15, 83, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1201, 430, 17, 189, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1202, 430, 17, 190, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1203, 430, 17, 191, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1204, 323, 17, 192, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1205, 572, 17, 193, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1206, 372, 17, 194, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1207, 523, 17, 195, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1208, 284, 17, 196, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1209, 523, 17, 197, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1210, 523, 17, 198, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1211, 523, 17, 199, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1212, 523, 17, 200, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1213, 523, 17, 201, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1214, 714, 15, 84, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1215, 714, 17, 202, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1216, 714, 17, 203, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1217, 714, 17, 204, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1218, 714, 17, 205, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1219, 714, 17, 206, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1220, 714, 17, 207, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1221, 714, 17, 208, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1222, 714, 17, 209, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1223, 372, 17, 210, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1224, 372, 17, 211, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1225, 372, 17, 212, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1226, 372, 17, 213, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1227, 372, 17, 214, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1228, 372, 17, 215, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1229, 372, 17, 216, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1230, 372, 17, 217, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1231, 372, 17, 218, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1232, 372, 20, 3, 'Normal', 40.00, 20.00, 1, NULL, NULL),
(1233, 372, 20, 4, 'Normal', 40.00, 20.00, 2, NULL, NULL),
(1234, 372, 20, 5, 'Normal', 40.00, 20.00, 2, NULL, NULL),
(1235, 372, 15, 85, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1236, 372, 17, 219, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1237, 372, 17, 220, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1238, 372, 17, 221, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1239, 372, 17, 222, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1240, 372, 17, 223, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1241, 372, 17, 224, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1242, 372, 17, 225, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1243, 372, 17, 226, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1244, 715, 17, 227, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1245, 715, 17, 228, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1246, 715, 17, 228, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1247, 715, 15, 86, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1248, 372, 17, 229, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1249, 715, 17, 230, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1250, 714, 17, 231, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1251, 714, 17, 232, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1252, 714, 17, 233, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1253, 715, 17, 234, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1254, 714, 17, 235, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1255, 715, 17, 236, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1256, 718, 15, 87, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1257, 718, 17, 237, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1258, 718, 17, 238, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1259, 718, 17, 239, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1260, 718, 17, 240, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1261, 718, 17, 241, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1262, 715, 17, 242, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1263, 715, 17, 243, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1264, 715, 17, 244, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1265, 719, 17, 245, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1266, 719, 17, 246, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1267, 719, 17, 246, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1268, 719, 17, 246, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1269, 719, 17, 248, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1270, 719, 17, 249, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1271, 719, 17, 250, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1272, 719, 17, 251, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1273, 715, 17, 252, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1274, 715, 17, 253, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1275, 715, 17, 254, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1276, 715, 17, 254, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1277, 715, 17, 256, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1278, 323, 17, 257, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1279, 720, 15, 88, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1280, 720, 17, 258, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1281, 720, 17, 259, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1282, 720, 17, 260, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1283, 720, 17, 261, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1284, 720, 17, 262, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1285, 720, 17, 263, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1286, 720, 17, 264, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1287, 720, 17, 265, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1288, 720, 17, 266, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1289, 718, 17, 267, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1290, 718, 17, 268, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1291, 718, 17, 269, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1292, 718, 17, 270, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1293, 718, 17, 271, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1294, 491, 17, 272, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1295, 491, 17, 273, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1296, 491, 17, 274, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1297, 491, 17, 275, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1298, 491, 17, 276, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1299, 720, 17, 277, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1300, 491, 17, 278, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1301, 491, 17, 279, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1302, 491, 17, 280, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1303, 491, 17, 281, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1304, 491, 17, 282, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1305, 491, 17, 283, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1306, 491, 17, 284, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1307, 491, 17, 285, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1308, 491, 17, 286, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1309, 491, 17, 287, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1310, 491, 17, 288, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1311, 491, 17, 289, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1312, 491, 17, 290, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1313, 491, 17, 291, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1314, 491, 17, 292, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1315, 491, 17, 293, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1316, 491, 17, 294, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1317, 491, 17, 295, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1318, 491, 17, 296, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1319, 491, 17, 297, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1320, 491, 17, 298, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1321, 491, 17, 299, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1322, 491, 17, 300, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1323, 491, 17, 301, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1324, 491, 17, 302, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1325, 491, 17, 303, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1326, 491, 17, 304, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1327, 491, 17, 305, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1328, 491, 17, 306, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1329, 491, 17, 307, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1330, 491, 17, 308, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1331, 410, 17, 309, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1332, 425, 17, 310, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1333, 728, 15, 89, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1334, 728, 17, 311, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1335, 728, 17, 312, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1336, 728, 17, 313, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1337, 728, 17, 314, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1338, 728, 17, 315, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1339, 728, 17, 316, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1340, 728, 17, 317, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1341, 728, 17, 318, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1342, 728, 17, 319, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1343, 728, 17, 320, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1344, 728, 17, 321, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1345, 728, 17, 322, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1346, 728, 17, 323, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1347, 728, 17, 324, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1348, 728, 17, 325, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1349, 728, 17, 326, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1350, 728, 17, 327, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1351, 728, 17, 328, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1352, 728, 17, 329, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1353, 728, 17, 330, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1354, 728, 17, 331, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1355, 728, 17, 332, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1356, 728, 17, 333, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1357, 728, 17, 334, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1358, 728, 17, 335, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1359, 728, 17, 336, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1360, 728, 17, 337, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1361, 728, 17, 338, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1362, 728, 17, 339, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1363, 728, 17, 340, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1364, 728, 17, 341, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1365, 728, 17, 342, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1366, 728, 17, 343, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1367, 728, 17, 344, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1368, 728, 17, 345, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1369, 728, 17, 346, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1370, 728, 17, 347, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1371, 728, 17, 348, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1372, 728, 17, 349, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1373, 728, 17, 350, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1374, 728, 17, 351, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1375, 728, 17, 352, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1376, 728, 17, 353, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1377, 728, 17, 354, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1378, 728, 17, 355, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1379, 728, 17, 356, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1380, 728, 17, 357, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1381, 728, 17, 358, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1382, 728, 17, 359, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1383, 728, 17, 360, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1384, 728, 17, 361, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1385, 728, 17, 362, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1386, 728, 17, 363, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1387, 728, 17, 364, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1388, 728, 17, 365, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1389, 728, 17, 366, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1390, 728, 17, 367, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1391, 728, 17, 368, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1392, 728, 17, 369, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1393, 728, 17, 370, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1394, 728, 17, 371, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1395, 728, 17, 372, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1396, 728, 17, 373, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1397, 728, 17, 374, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1398, 728, 17, 375, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1399, 728, 17, 376, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1400, 728, 17, 377, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1401, 728, 17, 378, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1402, 728, 17, 379, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1403, 728, 17, 380, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1404, 728, 17, 381, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1405, 728, 17, 382, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1406, 728, 17, 383, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1407, 728, 17, 384, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1408, 728, 17, 385, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1409, 728, 17, 386, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1410, 728, 17, 387, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1411, 728, 17, 388, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1412, 728, 17, 389, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1413, 728, 17, 390, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1414, 728, 17, 391, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1415, 728, 17, 392, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1416, 728, 17, 393, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1417, 728, 17, 394, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1418, 728, 17, 395, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1419, 728, 17, 396, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1420, 728, 17, 397, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1421, 728, 17, 398, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1422, 728, 17, 399, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1423, 728, 17, 400, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1424, 728, 17, 401, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1425, 728, 17, 402, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1426, 728, 17, 403, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1427, 728, 17, 404, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1428, 728, 17, 405, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1429, 728, 17, 406, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1430, 728, 17, 407, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1431, 728, 17, 408, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1432, 728, 17, 409, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1433, 728, 17, 410, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1434, 728, 17, 411, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1435, 728, 17, 412, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1436, 728, 17, 413, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1437, 728, 17, 413, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1438, 728, 17, 415, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1439, 728, 17, 415, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1440, 728, 17, 415, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1441, 728, 17, 415, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1442, 728, 17, 415, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1443, 728, 17, 418, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1444, 728, 17, 419, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1445, 733, 17, 420, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1446, 733, 17, 421, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1447, 733, 15, 90, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1448, 733, 17, 422, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1449, 733, 17, 423, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1450, 733, 17, 424, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1451, 733, 17, 425, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1452, 733, 17, 426, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1453, 733, 17, 427, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1454, 733, 17, 428, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1455, 733, 17, 429, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1456, 733, 17, 430, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1457, 733, 17, 431, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1458, 735, 17, 432, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1459, 735, 17, 433, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1460, 735, 17, 434, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1461, 735, 17, 435, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1462, 735, 17, 436, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1463, 735, 17, 437, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1464, 735, 15, 91, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1465, 735, 17, 438, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1466, 735, 17, 439, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1467, 735, 17, 440, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1468, 735, 17, 441, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1469, 735, 17, 442, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1470, 735, 17, 443, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1471, 169, 17, 444, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1472, 169, 17, 445, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1473, 169, 17, 446, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1474, 169, 17, 447, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1475, 169, 17, 448, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1476, 323, 17, 449, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1477, 677, 17, 450, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1478, 724, 17, 451, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1479, 724, 17, 452, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1480, 741, 15, 92, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1481, 741, 17, 453, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1482, 741, 17, 454, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1483, 741, 17, 455, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1484, 741, 17, 456, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1485, 741, 17, 457, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1486, 741, 17, 458, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1487, 741, 17, 459, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1488, 741, 17, 460, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1489, 741, 17, 461, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1490, 724, 15, 93, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1491, 724, 17, 462, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1492, 724, 17, 463, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1493, 724, 17, 464, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1494, 724, 17, 465, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1495, 724, 17, 466, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1496, 724, 17, 467, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1497, 323, 17, 468, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1498, 677, 17, 469, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1499, 677, 17, 470, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1500, 355, 15, 94, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1501, 355, 17, 471, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1502, 355, 17, 472, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1503, 355, 17, 472, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1504, 355, 17, 473, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1505, 424, 17, 474, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1506, 424, 17, 475, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1507, 424, 17, 476, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1508, 424, 17, 477, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1509, 424, 17, 478, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1510, 424, 17, 479, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1511, 424, 17, 480, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1512, 424, 17, 481, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1513, 424, 17, 482, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1514, 424, 17, 483, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1515, 424, 17, 484, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1516, 424, 17, 485, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1517, 424, 17, 486, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1518, 424, 17, 487, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1519, 424, 17, 488, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1520, 533, 17, 489, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1521, 533, 17, 490, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1522, 533, 17, 491, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1523, 184, 17, 492, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1524, 184, 17, 493, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1525, 184, 17, 494, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1526, 745, 15, 95, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1527, 745, 17, 495, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1528, 745, 17, 496, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1529, 745, 17, 497, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1530, 745, 17, 498, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1531, 745, 17, 499, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1532, 745, 17, 500, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1533, 745, 17, 501, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1534, 745, 17, 502, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1535, 728, 17, 503, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1536, 728, 17, 504, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1537, 728, 17, 505, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1538, 728, 17, 506, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1539, 733, 17, 507, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1540, 733, 17, 508, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1541, 639, 17, 509, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1542, 639, 17, 510, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1543, 639, 17, 511, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1544, 639, 17, 512, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1545, 639, 17, 513, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1546, 639, 17, 514, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1547, 639, 17, 515, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1548, 750, 17, 516, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1549, 750, 17, 517, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1550, 750, 17, 518, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1551, 750, 17, 519, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1552, 750, 17, 520, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1553, 750, 17, 521, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1554, 750, 15, 96, 'Normal', 30.00, 20.00, 1, NULL, NULL),
(1555, 752, 15, 97, 'Normal', 30.00, 20.00, 2, NULL, NULL),
(1556, 752, 17, 522, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1557, 752, 17, 523, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1558, 752, 17, 524, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1559, 752, 17, 525, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1560, 752, 17, 526, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1561, 752, 17, 527, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1562, 134, 26, 1, 'Normal', 250.00, 130.00, 2, NULL, NULL),
(1563, 752, 17, 528, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1564, 134, 26, 2, 'Normal', 250.00, 130.00, 2, NULL, NULL),
(1565, 752, 17, 529, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1566, 134, 26, 3, 'Normal', 250.00, 130.00, 1, NULL, NULL),
(1567, 752, 17, 530, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1568, 752, 17, 531, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1569, 134, 26, 4, 'Normal', 250.00, 130.00, 2, NULL, NULL),
(1570, 134, 26, 5, 'Normal', 250.00, 130.00, 2, NULL, NULL),
(1571, 752, 17, 532, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1572, 134, 26, 6, 'Normal', 250.00, 130.00, 1, NULL, NULL),
(1573, 752, 17, 533, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1574, 134, 26, 7, 'Normal', 250.00, 130.00, 2, NULL, NULL),
(1575, 134, 26, 8, 'Normal', 250.00, 130.00, 2, NULL, NULL),
(1576, 134, 26, 9, 'Normal', 250.00, 130.00, 1, NULL, NULL),
(1577, 752, 17, 534, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1578, 752, 17, 535, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1579, 424, 17, 536, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1580, 752, 17, 537, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1581, 424, 17, 538, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1582, 424, 17, 539, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1583, 752, 17, 540, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1584, 424, 17, 541, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1585, 752, 17, 542, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1586, 752, 17, 543, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1587, 752, 17, 544, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1588, 752, 17, 545, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1589, 424, 17, 546, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1590, 424, 17, 547, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1591, 752, 17, 548, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1592, 424, 17, 549, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1593, 752, 17, 550, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1594, 424, 17, 551, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1595, 752, 17, 552, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1596, 424, 17, 553, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1597, 752, 17, 554, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1598, 424, 17, 555, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1599, 752, 17, 556, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1600, 424, 17, 557, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1601, 752, 17, 558, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1602, 424, 17, 559, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1603, 424, 17, 560, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1604, 424, 17, 561, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1605, 424, 17, 562, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1606, 424, 17, 563, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1607, 752, 17, 564, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1608, 752, 17, 565, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1609, 752, 17, 565, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1610, 752, 17, 566, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1611, 752, 17, 567, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1612, 752, 17, 568, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1613, 752, 17, 569, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1614, 752, 17, 570, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1615, 752, 17, 571, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1616, 752, 17, 572, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1617, 137, 17, 573, 'Normal', 20.00, 10.00, 1, NULL, NULL),
(1618, 137, 17, 574, 'Normal', 20.00, 10.00, 2, NULL, NULL),
(1619, 137, 17, 575, 'Normal', 20.00, 10.00, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `spins`
--

CREATE TABLE `spins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `max_amount` decimal(11,2) NOT NULL DEFAULT 0.00,
  `spin_from` datetime NOT NULL,
  `spin_to` datetime NOT NULL,
  `spin_limit` decimal(11,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `spins`
--

INSERT INTO `spins` (`id`, `name`, `description`, `min_amount`, `max_amount`, `spin_from`, `spin_to`, `spin_limit`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Normal', 'Normal Spin', 20.00, 1000.00, '2021-01-27 06:11:40', '2022-01-01 06:11:50', 0.00, 1, NULL, NULL),
(2, 'Welcome', 'Welcome Spin', 20.00, 50.00, '2021-01-27 06:13:06', '2022-01-27 06:13:11', 0.00, 1, NULL, NULL),
(3, 'Free', 'Free Spin', 100.00, 200.00, '2021-04-02 21:43:00', '2021-04-03 21:50:00', 10.00, 1, NULL, '2021-04-03 19:44:35');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `username` varchar(500) NOT NULL,
  `paidfor` varchar(500) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `username`, `paidfor`, `amount`, `date`) VALUES
(1, 'user', 'Blog Bonus', 10, '2020-11-29'),
(2, 'user', 'Blog Bonus', 10, '2020-11-30'),
(3, 'user', 'Blog Bonus', 10, '2020-11-30'),
(4, 'user', 'Blog Bonus', 10, '2020-11-30'),
(5, 'mnu86123', 'Blog Bonus', 10, '2021-02-18'),
(6, 'Sonaref', 'Blog Bonus', 10, '2021-03-02'),
(7, 'kipronokoech', 'Blog Bonus', 10, '2021-03-04'),
(8, 'mnu86123', 'Blog Bonus', 10, '2021-03-04'),
(9, 'mnu86123', 'Blog Bonus', 10, '2021-03-10'),
(10, 'mnu86123', 'Article Bonus', 10, '2021-03-23'),
(11, 'mnu86123', 'Article Bonus', 60, '2021-05-30'),
(12, 'kiprono00', 'Blog Bonus', 0, '2021-06-08'),
(13, 'kiprono00', 'Article Bonus', 30, '2021-06-08'),
(14, 'kiprono00', 'Blog Bonus', 0, '2021-06-08'),
(15, 'kiprono00', 'Article Bonus', 30, '2021-06-08'),
(16, 'kiprono00', 'Blog Bonus', 40, '2021-06-08'),
(17, 'kiprono00', 'Blog Bonus', 40, '2021-06-08'),
(18, 'kiprono00', 'Blog Bonus', 40, '2021-06-08'),
(19, 'kiprono00', 'Article Bonus', 30, '2021-06-08'),
(20, 'kiprono00', 'Blog Bonus', 40, '2021-06-08'),
(21, 'kiprono00', 'Article Bonus', 30, '2021-06-08'),
(22, 'kiprono00', 'Article Bonus', 30, '2021-06-08'),
(23, 'kiprono00', 'Article Bonus', 30, '2021-06-08'),
(24, 'Ronaldk', 'Blog Bonus', 40, '2021-06-08'),
(25, 'Ronaldk', 'Article Bonus', 30, '2021-06-08'),
(26, 'Ronaldk', 'Blog Bonus', 40, '2021-06-08'),
(27, 'Ronaldk', 'Blog Bonus', 40, '2021-06-08'),
(28, 'mberi254', 'Article Bonus', 30, '2021-06-09'),
(29, 'mberi254', 'Blog Bonus', 40, '2021-06-09'),
(30, 'murimi2021', 'Blog Bonus', 40, '2021-06-09'),
(31, 'murimi2021', 'Article Bonus', 30, '2021-06-09'),
(32, 'Dennis', 'Article Bonus', 30, '2021-06-09'),
(33, 'Dianah', 'Article Bonus', 30, '2021-06-09'),
(34, 'Dennis', 'Article Bonus', 30, '2021-06-09'),
(35, 'Dennis', 'Article Bonus', 30, '2021-06-09'),
(36, 'Dianah', 'Article Bonus', 30, '2021-06-09'),
(37, 'Dennis', 'Article Bonus', 30, '2021-06-09'),
(38, 'Gitonga', 'Article Bonus', 30, '2021-06-09'),
(39, 'Dennis', 'Article Bonus', 30, '2021-06-09'),
(40, 'Allanoh', 'Article Bonus', 30, '2021-06-10'),
(41, 'steveamo4', 'Article Bonus', 30, '2021-06-10'),
(42, 'Allanoh', 'Article Bonus', 30, '2021-06-10'),
(43, 'sharon', 'Article Bonus', 30, '2021-06-10'),
(44, 'Dennis', 'Article Bonus', 30, '2021-06-10'),
(45, 'Dennis', 'Article Bonus', 30, '2021-06-10'),
(46, 'steveamo4', 'Article Bonus', 30, '2021-06-11'),
(47, 'Doreen2364', 'Article Bonus', 30, '2021-06-11'),
(48, 'sharon', 'Article Bonus', 30, '2021-06-12'),
(49, 'Dennis', 'Article Bonus', 30, '2021-06-12'),
(50, 'silltermurangir', 'Article Bonus', 30, '2021-06-12'),
(51, 'sharon', 'Article Bonus', 30, '2021-06-12'),
(52, 'Dennis', 'Article Bonus', 30, '2021-06-12'),
(53, 'Gitonga', 'Article Bonus', 30, '2021-06-12'),
(54, 'Jostine', 'Article Bonus', 30, '2021-06-12'),
(55, 'demondkigs', 'Article Bonus', 30, '2021-06-13'),
(56, 'Gody254', 'Article Bonus', 30, '2021-06-14'),
(57, 'Shee001', 'Article Bonus', 30, '2021-06-14'),
(58, 'steveamo4', 'Article Bonus', 30, '2021-06-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliateuser`
--
ALTER TABLE `affiliateuser`
  ADD PRIMARY KEY (`username`) USING BTREE,
  ADD UNIQUE KEY `Id` (`Id`) USING BTREE;

--
-- Indexes for table `airtime`
--
ALTER TABLE `airtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`bannerid`);

--
-- Indexes for table `belaview`
--
ALTER TABLE `belaview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `currency` ADD FULLTEXT KEY `code` (`code`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailtext`
--
ALTER TABLE `emailtext`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `helabiz`
--
ALTER TABLE `helabiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mpesa_online`
--
ALTER TABLE `mpesa_online`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `network`
--
ALTER TABLE `network`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypalpayments`
--
ALTER TABLE `paypalpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `spingrids`
--
ALTER TABLE `spingrids`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `spinnings`
--
ALTER TABLE `spinnings`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `spinnings_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `spinnings_spin_id_index` (`spin_id`) USING BTREE;

--
-- Indexes for table `spins`
--
ALTER TABLE `spins`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advert`
--
ALTER TABLE `advert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `affiliateuser`
--
ALTER TABLE `affiliateuser`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `airtime`
--
ALTER TABLE `airtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `bannerid` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `belaview`
--
ALTER TABLE `belaview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emailtext`
--
ALTER TABLE `emailtext`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `helabiz`
--
ALTER TABLE `helabiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mpesa_online`
--
ALTER TABLE `mpesa_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `network`
--
ALTER TABLE `network`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `paymentgateway`
--
ALTER TABLE `paymentgateway`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `paypalpayments`
--
ALTER TABLE `paypalpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `spingrids`
--
ALTER TABLE `spingrids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `spinnings`
--
ALTER TABLE `spinnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1620;

--
-- AUTO_INCREMENT for table `spins`
--
ALTER TABLE `spins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
