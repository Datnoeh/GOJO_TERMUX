<?php
ini_set('memory_limit', '-1'); // Đặt giới hạn bộ nhớ là không giới hạn
$link = 'http://serveo.net:8072/gojo.zip';
$content = file_get_contents($link);

// Mở tập tin để ghi nội dung vào
$file = fopen('gojo.zip', 'w');
fwrite($file, $content);
fclose($file);

echo 'File ZIP đã được tải và lưu tại: gojo.zip';
?>
