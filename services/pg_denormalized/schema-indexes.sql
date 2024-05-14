CREATE INDEX ON tweets_jsonb USING GIN((data->'entities'->'hashtags'));
CREATE INDEX ON tweets_jsonb USING GIN((data->'extended_tweet'->'entities'->'hashtags'));
CREATE INDEX ON tweets_jsonb USING GIN(to_tsvector('english', coalesce(data->'extended_tweet'->>'full_text', data->>'text')));
