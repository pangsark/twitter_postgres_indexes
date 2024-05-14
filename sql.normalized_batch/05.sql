/*
 * Calculates the hashtags that are commonly used for English tweets containing the word "coronavirus"
 */
SELECT
    tag,
    count(*) AS count
FROM (
    SELECT DISTINCT
        id_tweets,
        tag
    FROM tweets
    JOIN tweet_tags USING (id_tweets)
    WHERE to_tsvector('english',text)@@to_tsquery('english','coronavirus') and lang='en'
) AS t
GROUP BY tag
ORdER BY count desc,tag
LIMIT 1000;

