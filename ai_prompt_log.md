# NH?T KÝ TRA C?U VÀ TUONG TÁC AI

## Prompt 1: Truy v?n dung lu?ng trong MySQL
- **Prompt:** "Làm cách nào truy v?n information_schema.TABLES l?y Data Length và Index Length tính theo MB?"
- **K?t qu?:** Dùng phép chia data_length / (1024 * 1024) và index_length / (1024 * 1024).

## Prompt 2: Cardinality và tác h?i Over-Indexing
- **Prompt:** "T?i sao t?o Index B-Tree cho c?t BOOLEAN và TEXT l?i gây h?i d?n RAM và Disk Space?"
- **K?t qu?:** C?t TEXT làm phình to B-Tree Node; c?t BOOLEAN có Cardinality th?p khi?n Index vô d?ng nhung v?n t?n chi phí c?p nh?t khi INSERT.
