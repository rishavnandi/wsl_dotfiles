Write-Host "                                                                                                    "
Write-Host " _____ _______       _____   _____ _    _ _____ _____    _____  _____   ____  __  __ _____ _______  "
Write-Host " / ____|__   __|/\   |  __ \ / ____| |  | |_   _|  __ \  |  __ \|  __ \ / __ \|  \/  |  __ \__   __|"
Write-Host "| (___    | |  /  \  | |__) | (___ | |__| | | | | |__) | | |__) | |__) | |  | | \  / | |__) | | |   "
Write-Host " \___ \   | | / /\ \ |  _  / \___ \|  __  | | | |  ___/  |  ___/|  _  /| |  | | |\/| |  ___/  | |   "
Write-Host " ____) |  | |/ ____ \| | \ \ ____) | |  | |_| |_| |      | |    | | \ \| |__| | |  | | |      | |   "
Write-Host "|_____/  _|_/_/ ___\_\_|__\_\_____/|_|_ |_|_____|_|______|_|    |_|  \_\\____/|_|  |_|_|      |_|   "
Write-Host "    /\  | |  | |__   __/ __ \  |_   _| \ | |/ ____|__   __|/\   | |    | |                          "
Write-Host "   /  \ | |  | |  | | | |  | |   | | |  \| | (___    | |  /  \  | |    | |                          "
Write-Host "  / /\ \| |  | |  | | | |  | |   | | | . ` |\___ \   | | / /\ \ | |    | |                          "
Write-Host " / ____ \ |__| |  | | | |__| |  _| |_| |\  |____) |  | |/ ____ \| |____| |____                      "
Write-Host "/_/    \_\____/   |_|  \____/  |_____|_| \_|_____/   |_/_/    \_\______|______|                     "
Write-Host "                                                                                                    "
Write-Host "----------------https://github.com/rishavnandi/Dotfiles----------------"

Write-Host "----------------Installing Scoop----------------"
iex "& {$(irm get.scoop.sh)} -RunAsAdmin"

Write-Host "----------------Installing All The Apps----------------"
winget install -e --id Microsoft.VCRedist.2015+.x64
winget install -e --id Microsoft.VCRedist.2015+.x86
winget install -e --id Microsoft.VCRedist.2013.x64
winget install -e --id Microsoft.VCRedist.2013.x86
winget install -e --id Microsoft.DotNet.Runtime.6
winget install -e --id Microsoft.DirectX
winget install -e --id 7zip.7zip
winget install -e --id Git.Git
winget install -e --id VideoLAN.VLC
winget install -e --id Anaconda.Miniconda3
winget install -e --id AntibodySoftware.WizTree
winget install -e --id Notepad++.Notepad++
winget install -e --id chrisant996.Clink
winget install -e --id Google.Chrome
winget install -e --id WireGuard.WireGuard
winget install -e --id Oracle.VirtualBox
winget install -e --id Zoom.Zoom
winget install -e --id QL-Win.QuickLook
winget install -e --id Microsoft.VisualStudioCode
winget install -e --id Starship.Starship
winget install -e --id Rufus.Rufus
winget install -e --id Microsoft.PowerToys
winget install -e --id Notion.Notion
winget install -e --id EpicGames.EpicGamesLauncher
winget install -e --id Brave.Brave
winget install -e --id REALiX.HWiNFO
winget install -e --id LedgerHQ.LedgerLive
winget install -e --id Ubisoft.Connect
winget install -e --id Valve.Steam
winget install -e --id Docker.DockerDesktop
winget install -e --id SoftDeluxe.FreeDownloadManager
winget install -e --id Hashicorp.Vagrant
winget install -e --id Iterate.Cyberduck
winget install -e --id Guru3D.Afterburner
winget install -e --id Guru3D.RTSS
winget install -e --id Wagnardsoft.DisplayDriverUninstaller
winget install -e --id Google.QuickShare
winget install -e --id Spotify.Spotify
winget install -e --id WinSCP.WinSCP
winget install -e --id Ventoy.Ventoy
winget install -e --id TradingView.TradingViewDesktop
winget install -e --id Termius.Termius
winget install -e --id SomePythonThings.WingetUIStore
winget install -e --id Microsoft.WingetCreate
winget install -e --id CoreyButler.NVMforWindows
winget install -e --id Zen-Team.Zen-Browser.Optimized
winget install -e --id Intel.IntelDriverAndSupportAssistant
winget install -e --id Python.Python.3.12
winget install -e --id Anysphere.Cursor
winget install -e --id restic.restic
winget install -e --id Ollama.Ollama
winget install -e --id Microsoft.WindowsTerminal
winget install -e --id Telegram.Unigram
winget install -e --id TechPowerUp.ThrottleStop
winget install -e --id Vencord.Vesktop
winget install "msi center pro"
winget install 9NKSQGP7F2NH
scoop install lsd
scoop install winfetch

iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex

Write-Host "----------------Restore Legacy Context Menu----------------"
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve