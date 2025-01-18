#!/bin/bash
# Script: install_snapcast_server.sh
# Beschreibung:
# Dieses Skript installiert den Snapcast-Server auf einem Debian-basierten System (z. B. Raspberry Pi).
# Autor: Thilo Rode

set -e  # Beende das Skript bei Fehlern

# Header anzeigen
echo "========================================"
echo " Snapcast-Server Installation "
echo "========================================"

# Snapcast-Server installieren
echo "[INFO] Snapcast-Server wird installiert..."
sudo apt install -y snapserver

# Snapcast-Server aktivieren und starten
echo "[INFO] Aktivieren und Starten des Snapcast-Servers..."
sudo systemctl enable snapserver
sudo systemctl start snapserver

# Status anzeigen
echo "[INFO] Überprüfen des Snapcast-Server-Status..."
sudo systemctl status snapserver --no-pager

# Abschlussmeldung
echo "[INFO] Snapcast-Server wurde erfolgreich installiert und gestartet."
