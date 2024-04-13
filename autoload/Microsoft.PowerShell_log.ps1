# ディレクトリ用　現在の年月日を取得
$currentDate = Get-Date -Format "yyyy_MM_dd"

# ファイル用 現在の年月日時分秒を取得
$timestamp = Get-Date -Format "yyyy_MM_dd_HH_mm_ss"

# トランスクリプトディレクトリのパスを組み立て
$transcriptDirectoryPath = "C:\Users\81807\Documents\PowerShell\Logs\$currentDate"

# ディレクトリが存在しない場合のみ作成
if (-not (Test-Path $transcriptDirectoryPath -PathType Container)) {
	New-Item -ItemType Directory -Path $transcriptDirectoryPath -Force
	Write-Host "ディレクトリ $transcriptDirectoryPath が作成されました。"
} else {
	Write-Host "ディレクトリ $transcriptDirectoryPath は既に存在します。"
}

# トランスクリプトファイル生成
$transcriptFileName = "Transcript_$timestamp.log"

# トランスクリプト開始
Start-Transcript -Path "C:\Users\81807\Documents\PowerShell\Logs\$currentDate\$transcriptFileName"
