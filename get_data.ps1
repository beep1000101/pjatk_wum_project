# get_data.ps1

$currentDirectory = Get-Location
$dataDirectory = Join-Path $currentDirectory ".dataset"

if (-not (Test-Path $dataDirectory)) {
    New-Item -ItemType Directory -Path $dataDirectory | Out-Null
}

if (Test-Path (Join-Path $dataDirectory "dataset")) {
    Write-Host "Dataset already exists in $dataDirectory\dataset"
    exit 0
}

Invoke-WebRequest -Uri "https://www.kaggle.com/api/v1/datasets/download/sartajbhuvaji/brain-tumor-classification-mri" -OutFile (Join-Path $dataDirectory "dataset.zip")

# Unzip the dataset
Expand-Archive -Path (Join-Path $dataDirectory "dataset.zip") -DestinationPath $dataDirectory -Force