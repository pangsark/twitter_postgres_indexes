SELECT lang, count(DISTINCT id) as count
FROM (
    SELECT data->>'lang' AS lang, data->>'id' AS id
    FROM tweets_jsonb
    WHERE data->'entities'->'hashtags' @> '[{"text": "coronavirus"}]' OR data->'extended_tweet'->'entities'->'hashtags' @> '[{"text": "coronavirus"}]'
) AS t
GROUP BY lang
ORDER BY count desc, lang;
