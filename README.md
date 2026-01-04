🗂️ Backup Manager — Automated Backup System (PowerShell)

Un système de sauvegarde automatisé pour Windows, développé en PowerShell.  
Il permet de sauvegarder un dossier important, de compresser les fichiers, de gérer la rotation des sauvegardes et de journaliser toutes les opérations.

---

## 🚀 Fonctionnalités

- Sauvegarde automatique d’un dossier
- Compression en `.zip`
- Rotation des sauvegardes (suppression des archives trop anciennes)
- Journalisation dans un fichier `backup.log`
- Exécution manuelle ou via le Planificateur de tâches Windows
- Script simple, portable et modifiable

---

## 📁 Structure du projet

backup-manager/
├── backup.ps1
├── backup.log
└── README.md

## 🛠️ Installation

1. Clonez le projet :
```powershell
git clone https://github.com/<ton-user>/backup-manager
cd backup-manager
Modifiez les chemins dans backup.ps1 :

powershell
$source = "C:\Users\"
$destination = "D:\Backups\"```

Autorisez l’exécution des scripts PowerShell :

powershell
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
## ▶️ Exécution manuelle
powershell -File C:\Backups\backup.ps1

⏱️ Exécution automatique (Task Scheduler)
Créer une tâche planifiée :
schtasks /create /tn "BackupProjets" /tr "powershell.exe -File C:\Backups\backup.ps1" /sc daily /st 09:00

## 📓 Journalisation
Chaque exécution ajoute une ligne dans backup.log :

Code
2026-01-04_09-00 - Backup completed: D:\Backups\Projets\backup_2026-01-04_09-00.zip
