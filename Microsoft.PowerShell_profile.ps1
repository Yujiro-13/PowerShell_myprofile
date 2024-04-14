set-alias vi 'C:\Program Files (x86)\Vim\Vim91\vim.exe'
set-alias vim 'C:\Program Files (x86)\Vim\Vim91\vim.exe'

# 起動時確認
Get-Host

# ps1スクリプトを保存したディレクトリの場所
$psdir="C:\Users\81807\Documents\PowerShell\autoload"

# ディレクトリ内のすべてのps1ファイルを読み込む
Get-ChildItem "${psdir}\*.ps1" | %{.$_}


oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/paradox.omp.json" | Invoke-Expression

Import-module posh-git
Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete

# Import the Chocolatey Profile that contains the necessary code to enable
# tab-completions to function for `choco`.
# Be aware that if you are missing these lines from your profile, tab completion
# for `choco` will not function.
# See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
