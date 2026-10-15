-- ============================================================================
-- D? ÁN: SMARTFACTORY IoT SYSTEM - OPTIMIZATION SCRIPT
-- ============================================================================

CREATE DATABASE IF NOT EXISTS smartfactory_db;
USE smartfactory_db;

DROP TABLE IF EXISTS SensorLogs;

CREATE TABLE SensorLogs (
    log_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sensor_id INT NOT NULL,
    recorded_at DATETIME NOT NULL,
    temperature DECIMAL(5,2),
    humidity DECIMAL(5,2),
    status VARCHAR(20)
);

-- 1. T?o FAT COVERING INDEX ban d?u
CREATE INDEX idx_fat_covering ON SensorLogs(sensor_id, recorded_at, temperature, humidity, status);

INSERT INTO SensorLogs (sensor_id, recorded_at, temperature, humidity, status) VALUES
(105, '2026-06-20 08:00:00', 28.50, 65.00, 'NORMAL'),
(105, '2026-06-20 08:01:00', 29.10, 64.50, 'NORMAL');

-- 2. Ki?m tra EXPLAIN TRU?C KHI T?I UU (S? có 'Using index' ? c?t Extra)
EXPLAIN SELECT temperature, humidity, status 
FROM SensorLogs 
WHERE sensor_id = 105 AND recorded_at >= '2026-06-20';

-- 3. Xóa Fat Index và t?o Lean Index tinh g?n
ALTER TABLE SensorLogs DROP INDEX idx_fat_covering;
CREATE INDEX idx_lean_search ON SensorLogs(sensor_id, recorded_at);

-- 4. Ki?m tra EXPLAIN SAU KHI T?I UU (M?t 'Using index', nhung v?n dùng Index d? tìm ki?m range)
EXPLAIN SELECT temperature, humidity, status 
FROM SensorLogs 
WHERE sensor_id = 105 AND recorded_at >= '2026-06-20';

SHOW INDEX FROM SensorLogs;
