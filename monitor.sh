backup_folder() {
    echo "Backing up project folder..."
    backup_dir="$HOME/backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    cp -r "$PWD" "$backup_dir"
    echo "Backup complete: $backup_dir"
}


# Call the function
backup_folder