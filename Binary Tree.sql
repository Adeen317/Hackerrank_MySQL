Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node.


WITH NodeTypes AS (
    SELECT N,
           CASE
               WHEN P IS NULL THEN 'Root'
               WHEN N IN (SELECT DISTINCT P FROM BST) THEN 'Inner'
               ELSE 'Leaf'
           END AS Node_Type
    FROM BST
)
SELECT N, Node_Type
FROM NodeTypes
ORDER BY N;