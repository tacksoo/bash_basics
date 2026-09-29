# Initial Linux Server Setup & Common Commands
# Useful for setting up a fresh Linux installation (Ubuntu/Debian, CentOS/RHEL/Fedora, Arch/CachyOS)

# -----------------------------------------------------------------------------
# 1. System Updates & Package Management
# -----------------------------------------------------------------------------

# Ubuntu / Debian
sudo apt update && sudo apt upgrade -y

# CentOS / RHEL / Fedora
# sudo dnf update -y     # Fedora / modern RHEL / CentOS Stream
# sudo yum update -y     # Older CentOS / RHEL

# Arch Linux / CachyOS
# sudo pacman -Syu                     # Synchronize databases and upgrade all packages
# yay -Syu                             # Upgrade official repo and AUR packages using yay
# paru -Syu                            # Upgrade official repo and AUR packages using paru

# -----------------------------------------------------------------------------
# 2. Installing Essential Utilities
# -----------------------------------------------------------------------------

# Ubuntu / Debian
sudo apt install -y curl wget git vim htop tmux net-tools fail2ban ufw

# CentOS / RHEL / Fedora
# sudo dnf install -y curl wget git vim htop tmux net-tools fail2ban firewalld

# Arch Linux / CachyOS
# sudo pacman -S --needed curl wget git vim htop tmux net-tools fail2ban ufw

# -----------------------------------------------------------------------------
# 3. User Management & Sudo Access
# -----------------------------------------------------------------------------

# Create a new non-root user with a home directory
sudo adduser newuser
# On Arch/RHEL: sudo useradd -m -G wheel newuser && sudo passwd newuser

# Add user to sudoers group
sudo usermod -aG sudo newuser        # Ubuntu / Debian
# sudo usermod -aG wheel newuser     # CentOS / RHEL / Fedora / Arch / CachyOS

# -----------------------------------------------------------------------------
# 4. SSH Setup & Security Hardening
# -----------------------------------------------------------------------------

# Set up SSH directory for the user
mkdir -p ~/.ssh && chmod 700 ~/.ssh

# Append your public key to authorized_keys
# echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5..." >> ~/.ssh/authorized_keys
# chmod 600 ~/.ssh/authorized_keys

# Recommended SSH security settings in /etc/ssh/sshd_config:
# PermitRootLogin no
# PasswordAuthentication no

# Restart SSH service
# sudo systemctl restart sshd    # or 'sudo systemctl restart ssh' on Debian/Ubuntu

# -----------------------------------------------------------------------------
# 5. Firewall Setup
# -----------------------------------------------------------------------------

# UFW (Ubuntu / Debian / Arch)
sudo ufw allow OpenSSH           # Make sure SSH port is allowed before enabling!
sudo ufw enable
sudo ufw status

# Firewalld (RHEL / CentOS / Fedora / Arch option)
# sudo systemctl enable --now firewalld
# sudo firewall-cmd --permanent --add-service=ssh
# sudo firewall-cmd --reload

# -----------------------------------------------------------------------------
# 6. Timezone & Clock Synchronization
# -----------------------------------------------------------------------------

# List available timezones
timedatectl list-timezones

# Set system timezone to UTC
sudo timedatectl set-timezone UTC

# Check current date, time, and NTP synchronization status
timedatectl status

# -----------------------------------------------------------------------------
# 7. Basic System Diagnostics & Monitoring
# -----------------------------------------------------------------------------

# Check kernel and OS version details
uname -a
cat /etc/os-release

# Monitor system resources
free -h        # Memory (RAM and swap) usage
df -h          # Disk space usage on mounted filesystems
uptime         # System uptime and load average
top            # Live process and resource monitor (or 'htop')
