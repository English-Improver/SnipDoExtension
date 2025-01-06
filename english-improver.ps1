param(
    [string]$PLAIN_TEXT
)

$body = @{
    function = "explain"
    text = $PLAIN_TEXT
} | ConvertTo-Json

$headers = @{
    "Content-Type" = "application/json"
}

Invoke-RestMethod -Uri "http://localhost:24678/trigger" -Method Post -Body $body -Headers $headers -ContentType "application/json"