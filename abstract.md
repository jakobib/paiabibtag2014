# Wir öffnen Benutzerkonten 

*Jakob Voß, Verbundzentrale des GBV, Digitale Bibliothek, Göttingen, Deutschland*
 
Angesichts der zentralen Bedeutung des Benutzerkontos ist es erstaunlich, dass
bislang kein Bibliothekssystem eine offene Programmierschnittstelle (API) für
Benutzerkonten anbietet. Während es für Webanwendungen als best practice gilt,
wesentliche Funktionen über eine API bereitzustellen, sind Bibliotheksnutzer
meist auf eher unhandliche Benutzeroberflächen angewiesen. Vor allem die
Einbindung des Benutzerkontos in andere Anwendungen (Mashups) wie
Discovery-Interfaces, virtuelle Lernumgebungen und mobile Dienste wird durch
das Fehlen einer offenen und einfachen Benutzerkonto-API erschwert. Im GBV
wurde die Entwicklung einer mobilen Bibliotheks-App ("BibApp") zum Anlass
genommen, von weiteren Hacks auf Basis instabiler interner Schnittstellen
Abstand zu nehmen und stattdessen eine saubere Schnittstelle zum Ausleihsystem
zu verwenden. Mit der "Patrons Account Information API" (PAIA) wurde deshalb
eine offene Schnittstelle zum Zugriff auf Benutzerkonten entwickelt und für das
LBS-System umgesetzt. Die Spezifikation ist basiert auf etablierten Techniken
wie HTTPS, JSON und OAuth und beschränkt sich auf die wesentlichen Funktionen
wie Ausleihen, Vormerkungen, Verlängerungen und Gebühren - somit können
Entwickler ohne umfangreiches Hintergrundwissen über Bibliothekssysteme
Anwendungen schreiben, die per PAIA auf Benutzerkonten zugreifen und PAIA für
weitere Bibliothekssysteme umsetzen. Neben der Spezifikation wird ein
PAIA-Client zum Testen von PAIA-Servern angeboten. Im Vortrag soll gezeigt
werden, wie Benutzerkonto mit PAIA offen nutzbar gemacht werden können, und
welche Anwendungen damit möglich sind.
