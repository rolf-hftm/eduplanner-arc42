# EduPlanner – Architekturdokumentation (arc42 V.9)

Dieses Repository enthält eine beispielhafte Software-Architekturbeschreibung für das fiktive Projekt **EduPlanner**. Es dient als Lehrbeispiel im Modul **Software-Architektur** an der **HFTM (Höhere Fachschule für Technik Mittelland)**.

Die Dokumentation basiert auf dem [arc42-Template](https://arc42.org) in der Version 9.0 (Juli 2025).

## Projektbeschreibung

**EduPlanner** ist eine (fiktive) Weiterbildungsplattform der SkillBridge AG, die Kursanbieter bei der Verwaltung und Vermarktung ihrer Bildungsangebote unterstützt. Dieses Projekt zeigt, wie eine moderne, strukturierte Architekturdokumentation nach dem arc42-Standard aufgebaut ist.

### Struktur der Dokumentation

Die Dokumentation ist in 14 Kapitel unterteilt, welche die verschiedenen Aspekte der Architektur beleuchten:

1.  **Einführung und Ziele:** Aufgabenstellung, Qualitätsziele und Stakeholder.
2.  **Randbedingungen:** Technische, organisatorische und politische Vorgaben.
3.  **Kontextabgrenzung:** Fachlicher und technischer Kontext (System Context).
4.  **Lösungsstrategie:** Grundlegende Entscheidungen und Architekturmuster.
5.  **Bausteinsicht:** Hierarchische Zerlegung des Systems (Whitebox-Sichten).
6.  **Laufzeitsicht:** Dynamisches Verhalten (Sequenzdiagramme).
7.  **Verteilungssicht:** Infrastruktur und Deployment.
8.  **Querschnittliche Konzepte:** Architekturthemen, die mehrere Bausteine betreffen (Security, Logging, etc.).
9.  **Architekturentscheidungen (ADRs):** Dokumentation wichtiger Entschlüsse.
10. **Qualitätsanforderungen:** Qualitätsszenarien und Qualitätsbaum.
11. **Risiken und technische Schulden:** Bekannte Probleme und Risiken.
12. **Glossar:** Definition wichtiger Fachbegriffe.
13. **Betrieb und Deployment (Runbook):** Informationen für den Betrieb.
14. **Roadmap und Evolution:** Zukünftige Planung.

Zusätzlich enthält der Anhang Event Storming Resultate, Diagramm-Übersichten und die OpenAPI-Spezifikation.

---

## PDF-Generierung

Um die Dokumentation als PDF zu lesen, kann diese aus den LaTeX-Quellen generiert werden. Hierfür steht ein Shell-Skript zur Verfügung.

### Voraussetzungen

Damit die PDF-Erzeugung funktioniert, müssen folgende Tools auf deinem System installiert sein:

*   **LaTeX-Distribution:** Eine aktuelle Distribution wie [TeX Live](https://www.tug.org/texlive/) (Linux/Windows) oder [MacTeX](https://www.tug.org/mactex/) (macOS).
*   **pdflatex:** Das Standard-Tool zur Erzeugung von PDFs aus LaTeX-Dateien (Teil der o.g. Distributionen).
*   **Shell-Umgebung:** Bash (unter Linux/macOS standardmäßig vorhanden, unter Windows z.B. via Git Bash oder WSL).

*Hinweis: Falls das Literaturverzeichnis (Bibliography) aktualisiert werden soll, ist zusätzlich `biber` erforderlich.*

### Durchführung der Kompilierung

Die Generierung erfolgt über das beiliegende Skript `compile.sh`. Gehe wie folgt vor:

1.  Öffne ein Terminal im Projektverzeichnis.
2.  Stelle sicher, dass das Skript ausführbar ist:
    ```bash
    chmod +x compile.sh
    ```
3.  Starte den Kompilierungsprozess:
    ```bash
    ./compile.sh
    ```

### Was das Skript macht

Das Skript `compile.sh` automatisiert folgende Schritte:
1.  **Erstellt das Ausgabeverzeichnis:** Falls der Ordner `out/` nicht existiert, wird er angelegt.
2.  **Mehrfache Kompilierung:** Führt `pdflatex` dreimal aus. Dies ist notwendig, damit Inhaltsverzeichnisse, Abbildungsverzeichnisse und Querverweise (Referenzen) korrekt aufgelöst werden.
3.  **Bereinigung:** Nach der erfolgreichen Erstellung werden temporäre Hilfsdateien (`.aux`, `.log`, `.toc`, etc.) im `out/`-Verzeichnis gelöscht, um das Projekt sauber zu halten.

### Ergebnis

Nach erfolgreichem Durchlauf findest du das fertige Dokument hier:
**`out/main.pdf`**

---

## Hinweise für Studierende (HFTM)

Dieses Dokument ist als Referenz für eigene Arbeiten gedacht. Beachte die Kommentare und Fussnoten in den `.tex`-Dateien, die zusätzliche Erklärungen zum arc42-Framework und zur methodischen Vorgehensweise im Modul bieten.

**Kontakt:** Rolf Jufer (rolf.jufer@hftm.ch)

---

## Lizenz

Dieses Projekt ist unter der **Apache License 2.0** lizenziert. Weitere Details finden Sie in der Datei [LICENSE](LICENSE).
