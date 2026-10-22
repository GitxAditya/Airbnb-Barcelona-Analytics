CREATE DATABASE airbnb_barcelona;
USE airbnb_barcelona;

CREATE TABLE neighbourhoods (
    neighbourhood       VARCHAR(100) NOT NULL,
    neighbourhood_group VARCHAR(100),
    PRIMARY KEY (neighbourhood)
);

CREATE TABLE listings (
    id                    BIGINT       NOT NULL,
    name                  VARCHAR(500),
    host_id               BIGINT,
    host_name             VARCHAR(200),
    host_is_superhost     BOOLEAN,
    neighbourhood         VARCHAR(100),
    latitude              DECIMAL(9,6),
    longitude             DECIMAL(9,6),
    room_type             VARCHAR(50),
    property_type         VARCHAR(100),
    accommodates          INT,
    bedrooms              DECIMAL(3,1),
    beds                  DECIMAL(3,1),
    price                 DECIMAL(10,2),
    minimum_nights        INT,
    maximum_nights        INT,
    availability_365      INT,
    number_of_reviews     INT,
    review_scores_rating  DECIMAL(3,2),
    last_scraped          DATE,
    PRIMARY KEY (id),
	INDEX idx_neighbourhood (neighbourhood),
    INDEX idx_room_type (room_type),
    INDEX idx_price (price),
    CONSTRAINT fk_listings_neighbourhood
		FOREIGN KEY (neighbourhood) REFERENCES neighbourhoods(neighbourhood)
        ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE calendar (
    listing_id      BIGINT        NOT NULL,
    date            DATE          NOT NULL,
    available       BOOLEAN       NOT NULL,
    price           DECIMAL(10,2),
    minimum_nights  INT,
    maximum_nights  INT,
    PRIMARY KEY (listing_id, date),
    INDEX idx_date (date),
    INDEX idx_available (available),
    CONSTRAINT fk_calendar_listing
        FOREIGN KEY (listing_id) REFERENCES listings(id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE reviews (
    id             BIGINT       NOT NULL,
    listing_id     BIGINT       NOT NULL,
    date           DATE         NOT NULL,
    reviewer_id    BIGINT,
    reviewer_name  VARCHAR(200),
    comments       TEXT,
    PRIMARY KEY (id),
    INDEX idx_listing_id (listing_id),
    INDEX idx_date (date),
    CONSTRAINT fk_reviews_listing
        FOREIGN KEY (listing_id) REFERENCES listings(id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

SHOW TABLES;