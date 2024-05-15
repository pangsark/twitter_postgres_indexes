CREATE INDEX ON tweet_tags(tag);
CREATE INDEX ON tweets(id_tweets);
CREATE INDEX ON tweets USING gin(to_tsvector('english', text));
