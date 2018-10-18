CREATE TABLE subscribers (
  id INTEGER PRIMARY KEY,
    monthly_invoice_id INTEGER,
    credit_card_id INTEGER,
    stream_id INTEGER,
    username TEXT,
    email_address TEXT
);

CREATE TABLE credit_card (
  id INTEGER PRIMARY KEY,
    subscriber_id INTEGER,
    credit_card_number INTEGER,
    expiry_date INTEGER,
    cvs_number INTEGER
);

CREATE TABLE monthly_invoice (
  id INTEGER PRIMARY KEY,
    subscriber_id INTEGER,
    payment_id INTEGER,
    subscription_plan_id INTEGER,
    has_paid BOOLEAN,
    invoice_date DATE
);

CREATE TABLE payment (
  id INTEGER PRIMARY KEY,
    payment_type_id INTEGER,
    monthly_invoice_id INTEGER,
    status TEXT
);

CREATE TABLE payment_type (
  id INTEGER PRIMARY KEY,
    payment_id INTEGER,
    credit_card BOOLEAN,
    checks BOOLEAN
);

CREATE TABLE cc_detail (
  id INTEGER PRIMARY KEY,
    payment_id INTEGER,
    authourization BOOLEAN
);

CREATE TABLE streams (
  id INTEGER PRIMARY KEY,
    video_id INTEGER,
    subscriber_id INTEGER,
    length_of_stream INTEGER
);

CREATE TABLE videos (
  id INTEGER PRIMARY KEY,
    video_license_id INTEGER,
    stream_id INTEGER,
    title TEXT,
    length INTEGER
);

CREATE TABLE video_licenses (
  id INTEGER PRIMARY KEY,
    content_provider_id INTEGER,
    video_id INTEGER,
    concurrent_subscribers_limit INTEGER
);

CREATE TABLE content_provider (
  id INTEGER PRIMARY KEY,
    video_license_id INTEGER,
    name TEXT
);
