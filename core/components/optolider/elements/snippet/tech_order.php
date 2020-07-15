<?php
$tp = $modx->getOption('table_prefix');
$sQuery = "SELECT
u.username as email
FROM
".$tp."ms2_orders m2o
LEFT JOIN
".$tp."users u ON (m2o.user_id = u.id)

GROUP BY m2o.user_id
ORDER BY u.username
";
$result = $modx->query($sQuery);
$res = $result->fetchAll(PDO::FETCH_ASSOC);

echo "<ol>";
foreach($res as $v){
    echo "<li>".$v['email']."</li>";
}
echo "</ol>";