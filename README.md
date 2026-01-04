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

$source = "C:\Users\"
$destination = "D:\Backups\"
