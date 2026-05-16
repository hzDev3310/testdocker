<?php
// unzip.php
$zip = new ZipArchive;
if ($zip->open('release.zip') === TRUE) {
    $zip->extractTo(__DIR__ . '/');
    $zip->close();
    echo "Deployment successfully extracted in milliseconds!";
    unlink('release.zip'); // Cleans up the zip file automatically
} else {
    echo "Extraction failed. Make sure release.zip exists.";
}
?>