export VISUAL=nvim
export EDITOR=nvim
# source /usr/share/cachyos-fish-config/cachyos-config.fish
alias vim='nvim'
atuin init fish | source
zoxide init fish | source
eval "$(jira completion fish)"

# source ~/Sync/airflow/.venv/bin/activate.fish
source ~/.config/fish/scripts/format_files
source ~/.config/fish/scripts/heavy_format_files
source ~/.config/fish/scripts/ssh_functions
source ~/.config/fish/scripts/fuzzy_finder

# Database Aliases
alias zk 'zellij ka -y'

# RegScale Authentication

# OpenAI Configuration

# Development Environment
export DEV=1

# RegScale Configuration
set -gx STORED_FILES_PATH /home/bryan/regscale/regscale/atlas/files
set -gx FILE_SIZE_LIMIT 104857600

# Security Keys

# Local Development Environment Variables (from .localdev.env)

# AWS Configuration
# Docker Configuration
export DOCKER_HOST=unix:///var/run/docker.sock
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1

# .NET Configuration
export DOTNET_ROOT=/usr/share/dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

# Node.js Configuration
export NODE_ENV=development
export NPM_CONFIG_LOGLEVEL=warn

# Git Configuration
export GIT_AUTHOR_NAME="Bryan Eaton"
export GIT_AUTHOR_EMAIL="bryan.eaton77@gmail.com"
export GIT_COMMITTER_NAME="Bryan Eaton"
export GIT_COMMITTER_EMAIL="bryan.eaton@medaxion.com"

# Development Tools
export VSCODE_EXTENSIONS="/home/bryan/.vscode/extensions"
export RIDER_HOME="/opt/rider"
export WEBSTORM_HOME="/opt/webstorm"

# Testing Configuration
export TEST_ENVIRONMENT=local
export TEST_DATABASE=ATLAS_Test
export COVERAGE_REPORT_PATH="/home/bryan/coverage-reports"

# Logging Configuration
export LOG_LEVEL=Debug
export LOG_FILE_PATH="/home/bryan/logs/regscale.log"

# API Configuration
export API_BASE_URL="http://localhost:5000"
export API_VERSION="v1"
export CORS_ORIGINS="http://localhost:3000,http://localhost:4200"

# Angular Configuration
export NG_CLI_ANALYTICS=false
export NG_BUILD_ANALYTICS=false


# Security Configuration
export ASPNETCORE_URLS="http://localhost:5000;https://localhost:5001"
export ASPNETCORE_Kestrel__Limits__MaxConcurrentConnections=100
export ASPNETCORE_Kestrel__Limits__MaxConcurrentUpgradedConnections=100


# Cache Configuration
export REDIS_CONNECTION_STRING="localhost:6379"
export CACHE_DURATION=3600


# Backup Configuration
export BACKUP_PATH="/home/bryan/backups"
export BACKUP_RETENTION_DAYS=30

# Development Aliases
alias dotnet-build='dotnet build --configuration Debug'
alias dotnet-test='dotnet test --configuration Debug --verbosity normal'
alias dotnet-run='dotnet run --configuration Debug'
alias dotnet-watch='dotnet watch --configuration Debug'
alias dotnet-clean='dotnet clean'
alias dotnet-restore='dotnet restore'

# Docker Aliases
alias docker-clean='docker system prune -f'
alias docker-stop-all='docker stop $(docker ps -q)'
alias docker-remove-all='docker rm $(docker ps -aq)'
alias docker-images='docker images --format "table {{.Repository}}\t{{.Tag}}\t{{.Size}}"'


# Git Aliases
alias git-status='git status --porcelain'
alias git-branch='git branch --show-current'
alias git-log='git log --oneline --graph --decorate'
alias git-push-all='git push --all --tags'
alias git-clean='git clean -fd && git reset --hard HEAD'

# Development Workflow Aliases
alias dev-start='docker-compose up -d && dotnet run --project atlas'
alias dev-stop='docker-compose down'
alias dev-restart='dev-stop && dev-start'
alias dev-logs='docker-compose logs -f'

# Testing Aliases
alias test-all='dotnet test --configuration Debug --verbosity normal --collect:"XPlat Code Coverage"'
alias test-watch='dotnet test --configuration Debug --verbosity normal --watch'
alias test-coverage='dotnet test --configuration Debug --collect:"XPlat Code Coverage" --results-directory coverage'

# Code Quality Aliases
alias format-code='dotnet format'
alias lint-code='dotnet format --verify-no-changes'
alias analyze-code='dotnet build --configuration Debug --verbosity minimal'

# Utility Aliases
alias ports='netstat -tulpn | grep LISTEN'
alias memory='free -h'
alias disk='df -h'
alias processes='ps aux --sort=-%cpu | head -10'

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# Android Development Environment Variables
set -gx ANDROID_HOME $HOME/Android/Sdk
set -gx ANDROID_SDK_ROOT $ANDROID_HOME
set -gx PATH $PATH $ANDROID_HOME/tools
set -gx PATH $PATH $ANDROID_HOME/tools/bin
set -gx PATH $PATH $ANDROID_HOME/platform-tools
set -gx PATH $PATH $ANDROID_HOME/emulator
set -gx JAVA_HOME /usr/lib/jvm/java-21-openjdk

# WIZ 

export AWS_DEFAULT_REGION="us-east-1"

# MSFS 
alias msfscommunity="cd /home/bryan/.steam/steam/steamapps/compatdata/1250410/pfx/drive_c/users/steamuser/AppData/Roaming/Microsoft\ Flight\ Simulator/Packages/Community"



set -gx VIRTUAL_ENV /home/bryan/Sync/airflow/.venv
set -gx SPARK_HOME /home/bryan/spark/spark-4.2.0-bin-hadoop3
set -gx PATH $SPARK_HOME/bin $SPARK_HOME/sbin $PATH
set -gx JAVA_HOME /usr/lib/jvm/java-21-openjdk
export PATH="$HOME/.local/bin:$PATH"


test -f ~/.config/fish/secrets.fish && source ~/.config/fish/secrets.fish	
