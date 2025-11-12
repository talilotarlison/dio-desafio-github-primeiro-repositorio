#! /bin/bash
diretorio_backup="/path do diretório/"
ls "$diretorio_backup"
arquivo_backup="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$arquivo_backup" "$diretorio_backup"
echo "Backup concluído em $arquivo_backup."
