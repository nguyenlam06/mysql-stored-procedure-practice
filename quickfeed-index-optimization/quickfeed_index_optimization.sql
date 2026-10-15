-- ============================================================================
-- D? ÁN: QUICKFEED - T?I UU HÓA INDEX VÀ GI?I C?U B? NH? LUU TR?
-- ============================================================================

CREATE DATABASE IF NOT EXISTS quickfeed_db;
USE quickfeed_db;

DROP TABLE IF EXISTS Posts;

CREATE TABLE Posts (
    post_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    content TEXT,
    post_type VARCHAR(10),
    is_visible BOOLEAN DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- T?o 5 Index ban d?u
CREATE INDEX idx_user_id ON Posts(user_id);
CREATE INDEX idx_content ON Posts(content(255));
CREATE INDEX idx_post_type ON Posts(post_type);
CREATE INDEX idx_is_visible ON Posts(is_visible);
CREATE INDEX idx_created_at ON Posts(created_at);

-- Ki?m tra dung lu?ng TRU?C KHI T?I UU
SELECT 
    table_name AS 'B?ng',
    ROUND(data_length / (1024 * 1024), 2) AS 'Dung lu?ng Data (MB)',
    ROUND(index_length / (1024 * 1024), 2) AS 'Dung lu?ng Index (MB)'
FROM information_schema.TABLES
WHERE table_schema = 'quickfeed_db' AND table_name = 'Posts';

-- Xóa 3 Index vô d?ng
ALTER TABLE Posts DROP INDEX idx_content;
ALTER TABLE Posts DROP INDEX idx_post_type;
ALTER TABLE Posts DROP INDEX idx_is_visible;

-- Ki?m tra dung lu?ng SAU KHI T?I UU
SELECT 
    table_name AS 'B?ng',
    ROUND(data_length / (1024 * 1024), 2) AS 'Dung lu?ng Data (MB)',
    ROUND(index_length / (1024 * 1024), 2) AS 'Dung lu?ng Index (MB)'
FROM information_schema.TABLES
WHERE table_schema = 'quickfeed_db' AND table_name = 'Posts';

SHOW INDEX FROM Posts;
