CREATE INDEX idx_tags ON tweet_tags(tag);
CREATE INDEX idx_id_tweets ON tweets(id_tweets);
CREATE INDEX idx_text_fts on tweets USING gin(to_tsvector('english', text));
