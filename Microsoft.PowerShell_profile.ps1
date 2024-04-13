set-alias vi 'C:\Program Files (x86)\Vim\Vim91\vim.exe'
set-alias vim 'C:\Program Files (x86)\Vim\Vim91\vim.exe'

# 起動時確認
Get-Host

# ps1スクリプトを保存したディレクトリの場所
$psdir="C:\Users\81807\Documents\PowerShell\autoload"

# ディレクトリ内のすべてのps1ファイルを読み込む
Get-ChildItem "${psdir}\*.ps1" | %{.$_}

