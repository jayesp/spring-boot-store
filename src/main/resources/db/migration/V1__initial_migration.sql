CREATE TABLE users (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE categories (
    id TINYINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB;

CREATE TABLE profiles (
    id BIGINT NOT NULL,
    bio LONGTEXT NULL,
    phone_number VARCHAR(15) NULL,
    date_of_birth DATE NULL,
    loyalty_points INT UNSIGNED NULL DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT profiles_ibfk_1
        FOREIGN KEY (id) REFERENCES users (id)
        ON DELETE NO ACTION
) ENGINE=InnoDB;

CREATE TABLE products (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description LONGTEXT NOT NULL,
    category_id TINYINT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_category
        FOREIGN KEY (category_id) REFERENCES categories (id)
        ON DELETE NO ACTION
) ENGINE=InnoDB;

CREATE INDEX idx_products_category_id ON products (category_id);

CREATE TABLE addresses (
    id BIGINT NOT NULL AUTO_INCREMENT,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    zip VARCHAR(255) NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT addresses_users_id_fk
        FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE NO ACTION
) ENGINE=InnoDB;

CREATE INDEX idx_addresses_user_id ON addresses (user_id);

CREATE TABLE wishlist (
    product_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (product_id, user_id),
    CONSTRAINT fk_wishlist_on_product
        FOREIGN KEY (product_id) REFERENCES products (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_wishlist_on_user
        FOREIGN KEY (user_id) REFERENCES users (id)
        ON DELETE NO ACTION
) ENGINE=InnoDB;

CREATE INDEX idx_wishlist_user_id ON wishlist (user_id);