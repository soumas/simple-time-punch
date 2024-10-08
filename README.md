<img src="./terminal/_resources/images/Logo.svg" width="100">

# Model Flight Logbook
Digitales Flugbuch für Modellflugplätze mit vollautomatischer Anbindung zum "Austro Control Dronespace".

Seit der Einführung der EU Drohnenverordnung 2019/947 hat sich auf Österreichs Modellflugplätzen so manches geändert. Neben der Registrierungs- und Drohnenführerscheinpflicht für Piloten ist auch der Flugbetrieb am Platz mit neuen Obliegenheiten verbunden. So hat zum Beispiel jeder Pilot darüber Buch zu führen, wann und wie lange er am Flugplatz war und wie viele Flüge er in dieser Zeit absolviert hat. Befindet sich der Modellflugplatz in einer "Kontrollzone" (zum Beispiel in der Nähe von Flughäfen oder militärischen Einrichtungen) ist vor einem Takeoff der Flugbereich über das UTM System bei der Austro Control zu aktivieren.<br/><br/>
Neben umfangreichen organisatorischen Unterstützungsangeboten hat sich die "Modellsportgruppe Unterland" (https://msgu.at) dazu entschieden, für ihre Mitglieder ein digitales Flugbuch bereitzustellen. Jedes Mitglied erhält einen RFID Chip und kann sich damit - wie bei einer Stempeluhr - einfach ein- und auschecken. Neben der Zeiterfassung mit Metadaten (Anzahl Flüge, Besondere Vorkommnisse, ...) verfügt das System über eine vollautomatische Schnittstelle zum "Austro Control Dronespace" (https://utm.dronespace.at/avm/) und kümmert sich so um die Aktivierung/Deaktivierung des Fluggeländes.<br/><br/>

# Projektstatus
Aktuell (09/2024) befindet sich das Projekt in einer fortgeschrittenen Entwicklungsphase. Die Software ist großteils in der für uns passenden Variante entwickelt und die Hardware in Vorbereitung für die Erstinstallation (Server auf Raspberry Pi, Multi-User Terminal für Linux auf Raspberry Pi mit Touch-Screen und RFID Reader). Geplant ist eine Testphase mit eingeschränktem Benutzerkreis ehestmöglich bis Ende des Jahres. Ab 2025 möchten wir das System auf alle Mitglieder ausrollen.

In erster Linie entwickeln wir das Logbuch maßgeschneidert auf unsere Bedürfnisse. Diese decken sich allerdings mit den gesetzlichen Anforderungen und sind wohl für viele Modellflugvereine identisch. Aus diesem Grund stellen wird das Projekt unter der MIT Lizenz quelloffen zur freien Verfügung. Bei Fragen wenden Sie sich gerne an info@msgu.at .

# Systemübersicht
<br/>
<br/>
<img src="./mfl_systemuebersicht.drawio.svg" width="100%">

# Server
Der Server wurde in Python programmiert und kann daher auf vielen Systemen, wie Linux, Windows, macOS, usw. betrieben werden. Weitere Informationen und eine Installationsanleitung befinden sich im Unterordner [server](./server/).

# Terminal
Das "Model Flight Logbook Terminal" wurde in Flutter programmiert und kann daher für Web (JS), Linux, Windows, MacOS, Android und iOS kompiliert werden. Weitere Informationen und eine Installationsanleitung befinden sich im Unterordner [terminal](./terminal/).

# Haftungsausschluss
Der Haftungsausschluss ist grundsätzlich bereits über die verwendete Lizenz geregelt. Trotzdem weisen wir an dieser Stelle noch einmal explizit darauf hin, dass es sich hier um ein privates Projekt handelt. Keines der Funktionalitäten wurde mit öffentlichen Stellen abgestimmt. Der Einsatz des Systems erfolgt auf vollständiges Risiko des Betreibers.