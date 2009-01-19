require 'spacesuit/recipes/backup'
before "deploy:migrate", "backup_to_s3"