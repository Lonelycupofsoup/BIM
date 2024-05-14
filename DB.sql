CREATE TABLE `User_competitons`(
    `id_user_comp` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name1` INT NOT NULL,
    `name2` INT NOT NULL,
    `name3` INT NOT NULL,
    `name4` INT NOT NULL,
    `name5` INT NOT NULL
);
CREATE TABLE `events`(
    `id_event` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Name` TEXT NOT NULL,
    `date_time` DATETIME NOT NULL,
    `description` TEXT NOT NULL,
    `issue` TEXT NOT NULL,
    `place` INT NOT NULL,
    `the format of the event` BIGINT NOT NULL
);
CREATE TABLE `Users`(
    `id_user` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `surname` TEXT NOT NULL,
    `name` TEXT NOT NULL,
    `patronymic` TEXT NOT NULL,
    `date of birth` DATE NOT NULL,
    `competition` INT NOT NULL,
    `status` INT NOT NULL,
    `contacts` INT NOT NULL,
    `activity` INT NOT NULL,
    `education` INT NOT NULL
);
CREATE TABLE `education`(
    `id_education` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL,
    `user` INT NOT NULL,
    `start_time` DATE NOT NULL,
    `End_time` DATE NOT NULL
);
CREATE TABLE `rooms`(
    `id_room` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `floor` BIGINT NOT NULL,
    `number` INT NOT NULL,
    `capacity_of_people` INT NOT NULL,
    `projector` TINYINT(1) NOT NULL,
    `Wi-fi` TINYINT(1) NOT NULL,
    `kitchen` TINYINT(1) NOT NULL,
    `TV` TINYINT(1) NOT NULL,
    `padded stool` TINYINT(1) NOT NULL,
    `desk` TINYINT(1) NOT NULL,
    `flipchart` TINYINT(1) NOT NULL,
    `Start time` TIME NOT NULL,
    `end time of work` TIME NOT NULL
);
CREATE TABLE `list of visits`(
    `id_visit` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user` INT NOT NULL,
    `event` INT NOT NULL
);
CREATE TABLE `achievements`(
    `id_achieve` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` INT NOT NULL,
    `date` DATE NOT NULL,
    `event` INT NOT NULL,
    `user` INT NOT NULL
);
CREATE TABLE `format_of_the_ event`(
    `id_format` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `online` TINYINT(1) NOT NULL,
    `offline` TINYINT(1) NOT NULL
);
CREATE TABLE `User status`(
    `id_status` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `student` TINYINT(1) NOT NULL,
    `tutor` TINYINT(1) NOT NULL,
    `expert` TINYINT(1) NOT NULL
);
CREATE TABLE `List_of_competitions`(
    `id_comp` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL
);
ALTER TABLE
    `Users` ADD CONSTRAINT `users_competition_foreign` FOREIGN KEY(`competition`) REFERENCES `User_competitons`(`id_user_comp`);
ALTER TABLE
    `User_competitons` ADD CONSTRAINT `user_competitons_name5_foreign` FOREIGN KEY(`name5`) REFERENCES `List_of_competitions`(`id_comp`);
ALTER TABLE
    `events` ADD CONSTRAINT `events_place_foreign` FOREIGN KEY(`place`) REFERENCES `rooms`(`id_room`);
ALTER TABLE
    `events` ADD CONSTRAINT `events_the format of the event_foreign` FOREIGN KEY(`the format of the event`) REFERENCES `format_of_the_ event`(`id_format`);
ALTER TABLE
    `Users` ADD CONSTRAINT `users_status_foreign` FOREIGN KEY(`status`) REFERENCES `User status`(`id_status`);
ALTER TABLE
    `list of visits` ADD CONSTRAINT `list of visits_user_foreign` FOREIGN KEY(`user`) REFERENCES `Users`(`id_user`);
ALTER TABLE
    `achievements` ADD CONSTRAINT `achievements_user_foreign` FOREIGN KEY(`user`) REFERENCES `Users`(`id_user`);
ALTER TABLE
    `education` ADD CONSTRAINT `education_user_foreign` FOREIGN KEY(`user`) REFERENCES `Users`(`id_user`);
ALTER TABLE
    `User_competitons` ADD CONSTRAINT `user_competitons_name1_foreign` FOREIGN KEY(`name1`) REFERENCES `List_of_competitions`(`id_comp`);
ALTER TABLE
    `list of visits` ADD CONSTRAINT `list of visits_event_foreign` FOREIGN KEY(`event`) REFERENCES `achievements`(`event`);
ALTER TABLE
    `User_competitons` ADD CONSTRAINT `user_competitons_name4_foreign` FOREIGN KEY(`name4`) REFERENCES `List_of_competitions`(`id_comp`);
ALTER TABLE
    `User_competitons` ADD CONSTRAINT `user_competitons_name2_foreign` FOREIGN KEY(`name2`) REFERENCES `List_of_competitions`(`id_comp`);
ALTER TABLE
    `list of visits` ADD CONSTRAINT `list of visits_event_foreign` FOREIGN KEY(`event`) REFERENCES `events`(`id_event`);
ALTER TABLE
    `User_competitons` ADD CONSTRAINT `user_competitons_name3_foreign` FOREIGN KEY(`name3`) REFERENCES `List_of_competitions`(`id_comp`);