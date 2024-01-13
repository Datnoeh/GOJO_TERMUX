<?php
ini_set('upload_max_filesize', '-1');
ini_set('post_max_size', '-1');
ini_set('memory_limit', '-1');

if(isset($_POST["submit"])) {
    $target_dir = ""; // Thư mục lưu trữ tệp

    if (!file_exists($target_dir)) {
        mkdir($target_dir, 0777, true);
    }

    $target_file = $target_dir . basename($_FILES["file"]["name"]); // Đường dẫn đầy đủ đến tệp
    $uploadOk = 1;

    if ($uploadOk == 0) {
        echo "Tệp của bạn không được tải lên.";
    } else {
        if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file)) {
            echo "Tệp ". htmlspecialchars(basename($_FILES["file"]["name"])). " đã được tải lên thành công.";
        } else {
            echo "Đã xảy ra lỗi khi tải lên tệp.";
        }
    }
}
?>
