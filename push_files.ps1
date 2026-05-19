1..50 | ForEach-Object {
    $filename = "file_$_.txt"
    "This is file $_" | Out-File -FilePath $filename -Encoding utf8
    git add $filename
    git commit -m "Add file $_"
    git push origin main
    Write-Output "Successfully pushed $filename"
}
