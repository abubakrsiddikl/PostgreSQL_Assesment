# PostgreSQL Concepts

## 1. What is postgresql?

Postgresql হলো একটি ডাটাবেজ ম্যানেজমেন্ট সফটওয়্যার যা আমাদেরকে ডাটা কে ম্যানেজ করতে সহায়তা করে যেমন Insert,Update Delete ,ইত্যাদি অপারেশন করতে দেয়  
Postgresql structure বা table আকারে ডাটা সংরক্ষণ করতে দেয় ।

## 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

**Primary key** : ডাটাবেসের কোন টেবিলের Row কে যে কি ধারা ইউনিকভাবে আইডেন্টিফাই করা যায় তাকে প্রাইমারি কি বলা হয়  
**Foreign key** : কোন টেবিলের Primary key অন্য টেবিলে ব্যবহার করা হলে তখন ওই key কে  foreign key বলা হয় ।

## 3. What is the purpose of a database schema in PostgreSQL?

Database schema ডাটাবেজের মধ্যে টেবিল, ফাংশন, ভিউ ইত্যাদি অবজেক্ট গুলোকে লজিক্যালভাবে গ্রুপ বা সংগঠিত করে রাখে। এটি ডেটা ম্যানেজ করা সহজ করে এবং একাধিক ইউজার বা মডিউলের ডেটা আলাদা করে রাখতে সাহায্য করে।

## 4. What is the difference between the VARCHAR and CHAR data types?

**CHAR(n)** হচ্ছে ফিক্সড দৈর্ঘ্যের স্ট্রিং, কম অক্ষর হলে খালি জায়গা স্পেস দিয়ে পূরণ করে।  
**VARCHAR(n)** হচ্ছে পরিবর্তনশীল দৈর্ঘ্যের স্ট্রিং, যতটুকু দরকার ততটুকুই জায়গা নেয় এবং স্পেস দিয়ে পূরণ করে না।

## 5. Explain the purpose of the WHERE clause in a SELECT statement.

**WHERE clause** ব্যবহার করা হয় ডেটাবেজ থেকে নির্দিষ্ট শর্ত অনুযায়ী ডেটা ফিল্টার করে আনার জন্য। যেমন: `SELECT * FROM users WHERE age > 18;` — এখানে শুধু তাদের ডেটা আসবে যাদের বয়স ১৮-এর বেশি।
