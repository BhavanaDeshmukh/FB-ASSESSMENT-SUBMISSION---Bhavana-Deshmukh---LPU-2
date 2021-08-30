

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";






CREATE TABLE `comments` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `comment` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `comments` (`id`, `user_id`, `post_id`, `comment`, `date_created`) VALUES
(1, 1, 4, 'test', '2020-11-18 01:41:36'),
(2, 1, 4, '1', '2020-11-18 01:42:41'),
(3, 1, 3, 'sample only', '2020-11-18 01:47:22'),
(4, 1, 4, '123', '2020-11-18 02:03:06'),
(5, 1, 4, 'w', '2020-11-18 02:03:54'),
(6, 1, 4, 'test', '2020-11-18 02:04:05'),
(7, 1, 4, 'ww', '2020-11-18 02:04:59');



CREATE TABLE `likes` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `likes` (`id`, `user_id`, `post_id`, `date_created`) VALUES
(4, 1, 3, '2020-11-18 00:42:55'),
(8, 1, 8, '2020-11-18 10:28:02'),
(9, 1, 4, '2020-11-18 11:12:18');

-- --------------------------------------------------------


CREATE TABLE `posts` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `content` text NOT NULL,
  `type` int(11) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `posts` (`id`, `user_id`, `content`, `type`, `date_created`) VALUES
(4, 1, 'asdasdasd\r\nasda\r\nsdasd\r\nasd\r\nasd\r\nasd\r\nasd\r\nasdasd\r\nasd', 0, '2020-11-18 00:01:29');




CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `status` int(1) NOT NULL,
  `bio` text NOT NULL,
  `profile_pic` text NOT NULL,
  `cover_pic` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `users` (`id`, `firstname`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `dob`, `status`, `bio`, `profile_pic`, `cover_pic`, `date_created`) VALUES
(1, 'John', 'Smith', 'Male', '+18456-5455-55', 'Sample Address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', '2020-06-23', 2, 'I Am a Programmer', '1605666000_avatar.jpg', '1605662160_henri-l-547224-unsplash.jpg', '2020-11-17 22:19:38');




ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);




ALTER TABLE `comments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `likes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `posts`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

