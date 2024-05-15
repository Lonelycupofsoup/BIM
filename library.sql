CREATE TABLE `author`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` TEXT NOT NULL
);
CREATE TABLE `type`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `type_name` INT NOT NULL
);
CREATE TABLE `sphere`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `sphere_name` BIGINT NOT NULL
);
CREATE TABLE `library`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `book_name` TEXT NOT NULL,
    `author` BIGINT NOT NULL,
    `sphere` INT NOT NULL,
    `type` INT NOT NULL,
    `year` DATE NOT NULL
);
ALTER TABLE
    `library` ADD CONSTRAINT `library_author_foreign` FOREIGN KEY(`author`) REFERENCES `author`(`id`);
ALTER TABLE
    `library` ADD CONSTRAINT `library_type_foreign` FOREIGN KEY(`type`) REFERENCES `type`(`id`);
ALTER TABLE
    `library` ADD CONSTRAINT `library_sphere_foreign` FOREIGN KEY(`sphere`) REFERENCES `sphere`(`id`);