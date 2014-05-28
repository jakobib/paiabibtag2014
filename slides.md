---
title: Wir öffnen Benutzerkonten 
subtitle: mit der Patrons Account Information API
author: Jakob Voß
place: Bibliothekstag Bremen
date: 4.6.2014
...


# Hintergrund

## Motivation 

* Zugriff auf Benutzerkonto-Funktionen
    * Ausleihen
    * Bestellung & Verlängerung
    * Gebühren
    * ...
* in verschiedenen Anwendungen
    * VuFind: Discovery Interface
    * BibApp: Smartphone-App
    * ...

## Frustration

Vorhandene Schnittstellen (NCIP, SNLP, SQL...)

* nicht wirklich vorhanden
* nicht frei verfügbar
* nicht einfach umzusetzen

## Schnittstellen

* ~~**User Interface (UI)**~~\
  ~~Benutzeroberfläche~~
* **Application Programming Interface (API)**\
  Programmierschnittstellen

## Gute APIs sind...

* spezifiziert & dokumentiert ("Standard")
* über HTTP abrufbar ("Webservice")
* zustandslos ("REST")
* zweckbezogen beschränkt ("~~Eierlegende Wollmilch-API~~")

## Entwicklung einer Benutzerkonto-Schnittstelle

* Ausschreibung der BibApp: ab **Mitte 2011**
    * Jakob Voß (VZG)
    * Jarmo Schrader (UB Hildesheim)
    * Anne Christensen (UB Lüneburg)
    * effective WEBWORK GmbH 
* Implementierung am LBS: ab **Ende 2012**
    * Jürgen Hofmann (shiphrah GmbH/VZG)
* Iterative Spezifikation bis **Oktober 2013** (PAIA 1.0)

## Patrons Account Information API (PAIA)

JSON über HTTPS in zwei Modulen:

PAIA auth
  : * POST login
    * POST logout
    * POST change

PAIA core
  : * GET patron
    * GET items
    * POST request
    * POST cancel
    * GET fees

Alles Weitere unter <http://gbv.github.io/paia>


# Anwendungsbeispiele

## PAIA-Treiber in VuFind

* Entwickelt auf Basis der PAIA-Spezifikation
    * Oliver Goldschmitt (TU Harburg)
    * Till Kinstler (VZG)
* Auslieferung mit VuFind 2 geplant

---

![](vufind-login.png)

**PAIA auth: `login`** $\leftarrow$ VuFind-login

---

![](vufind-ausleihen.png)

**PAIA core: `items`** $\leftarrow$ Liste von Ausleihen & Bestellungen\
**PAIA core: `renew`** $\leftarrow$ Verlängern

---

![](vufind-request.png)

**PAIA core: `request`** $\leftarrow$ Bestellen oder Vormerken

---

![](vufind-bestellungen.png)

**PAIA core: `cancel`** $\leftarrow$ Bestellungen annullieren

## Benutzerkonto-Funktion in BibApp

* Entwickelt auf Basis der (frühen) PAIA-Spezifikation
    * effective WEBWORK GmbH 
* Inzwischen umgestellt auf PAIA 1.0

---

![](bibapp-konto.png)


# Technische Entwicklung

## Ohne Benutzerkonto-Schnittstelle

Ausleihsystem\
\ $\Longrightarrow^{HTML}$ Benutzeroberfläche

Ausleihsystem\
\ $\Longrightarrow^{Gefrickel}$ Anwendung

## Einführung der Benutzerkonto-Schnittstelle

1. Ausleihsystem\
   \ $\Longrightarrow^{HTML}$ Benutzeroberfläche \
   \ $\Longrightarrow^{Screenscraping}$ PAIA-Wrapper\
   \ $\Longrightarrow^{PAIA}$ Anwendung

2. Ausleihsystem\
   \ $\Longrightarrow^{PAIA}$ Anwendung

## PAIA-Implementierungen: Server

* Wrapper für das LBS3-OUS-Benutzerinterface
* Server für das LBS3 (eingeschränkt auch LBS4)
* Server für das LBS4 (in Arbeit)
* Eigene Entwicklung der UB Bochum (in Arbeit)
* ...

## PAIA-Implementierungen: Clients/Anwendungen

* VuFind-PAIA-Treiber
* BibApp
* Webclient zum Testen (JavaScript/HTML)
* Kommandozeilen-Client ([App::PAIA](https://metacpan.org/pod/distribution/App-PAIA/bin/paia))
* Weitere Ideen
    * Einbindung in Lernmanagement-Systeme
    * Bücherwecker
    * ...

# Ausblick

## PAIA-Service an der VZG

* Einrichtung & Hosting von PAIA-Server für PICA LBS
* `https://paia.gbv.de/isil/{ISIL}`
* Letzte Performance-Tests
* Preis- und Warteliste

## PAIA für weitere Bibliotheken

Weitere Bibliotheks- bzw. Ausleihsysteme

* Hersteller ansprechen
* Wrapper bauen

## OAuth 2.0 für PAIA auth

> Die Anwendung 'Bücherwecker' möchte auf Ihr Benutzerkonto mit 
> folgenden Rechten zugreifen: 
> 
> * Ausleihen und Vorbestellungen einsehen
> * Ausleihen verlängern
>
> [OK] [Ablehnen]

## Darüber hinaus

In PAIA nicht vorgesehene Informationen und Funktionen\
(bspw. Benutzergruppen, Kontaktdaten...)

* Erweiterung der PAIA-Spezifikation:\
  <https://github.com/gbv/paia/issues>

* ergänzende APIs spezifizieren und umsetzen

## Weitere Informationen

* PAIA-Spezifikation\
  <http://gbv.github.io/paia>
* Einführung und PAIA-Service der VZG\
  <https://www.gbv.de/wikis/cls/PAIA>

**Open Source**

BibApp
  : <https://github.com/gbv/bibapp-ios>\
    <https://github.com/gbv/bibapp-android>
VuFind
  : <http://vufind.org/>
CLI-Client
  : <https://metacpan.org/release/App-PAIA>

