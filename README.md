# kubanische-kaninchenzuechterei
CUBA Platform Beispiel-Anwendung: Kubanische Kaninchenzüchterei

Diese Beispiel-Anwendung beschäftigt sich mit dem fachlichen Kontext der Kaninchenzucht. Dabei werden die Funktionalitäten der CUBA Platform dargestellt.

## Domain Modell
Das Domain-Modell enthält die folgenden Entitäten:

- Tier
- Show
- ShowErgebnis

![Domain Modell - Kubanische Kaninchenzüchterei](https://github.com/mariodavid/kubanische-kaninchenzuechterei/blob/master/images/domain-modell.png)


## Funktionalitäten

Die kubanische Kaninchenzüchterei umfasst für die oben genannten Entitäten Eingabe Oberflächen zum Pflegen der entsprechenden Daten.

### Scaffolding: Listenansichten

Die Tier-Listenansicht ermöglicht das Anzeigen der gezüchteten Kaninchen. Listenansichten bieten bestimmte Funktionalitäten wie bspw. Gruppierung, Spalten ein-/ ausblenden sowie generische Filter.

![Tier-Listenansicht](https://github.com/mariodavid/kubanische-kaninchenzuechterei/blob/master/images/tier-listenansicht.png)

#### Standardlösung: Listenfilter
Als Standardfunktionalitäten sieht man hier die CUBA Filter-Komponente. Weitere Informationen zum Filtern in CUBA findet ihr bspw. in meinen Blog posts

* [The generic filter in CUBA platform – excel filters on steroids](https://www.road-to-cuba-and-beyond.com/the-generic-filter-in-cuba-platform-excel-filters-on-steorids/)
* [CUBA filters - the fast food of business software?](https://www.road-to-cuba-and-beyond.com/cuba-filters-the-fast-food-of-business-software/)


### Scaffolding: Editoren

Der Tier-Editor erlaubt es dem geneigten Kaninchenzüchter Detailinformationen des Kaninchens zu pflegen.

![Tier-Editor](https://github.com/mariodavid/kubanische-kaninchenzuechterei/blob/master/images/tier-listenansicht.png)

Das Scaffolding Ergebnis liefert Formulare für die untereschiedlichen Attribute & Assoziationen der Tier Entity. N:1 Beziehnugen bspw. werden als [PickerField](https://demo.cuba-platform.com/sampler/open?screen=simple-pickerfield) / LookupField darstellt.

#### Standardlösung: Berechtigungen

Als weiteres Beispiel für eine CUBA Standardlösung ist das ganze [Berechtigungssystem](https://doc.cuba-platform.com/manual-6.5/security_subsystem.html). Dafür sind in dieser Anwendung neben dem "admin" Benutzer ein weiterer Benutzer angelegt worden. 

"mario" (Passwort: "mario") ist ein Benutzer mit der Benutzerrolle "Mitarbeiter". Für diese Rolle gelten folgende Einschränkungen:
 
 * Menübereich "Administration" kann nicht geöffnet werden
 * Tiere dürfen nicht gelöscht werden
 * Bei der Bearbeitung von Tieren dürfen die Attribute `geburtstdatum`, `geschlecht` sowie `zuechternummer` geändert werden
 
 Desweiterern befindet sich der Benutzer "mario" in der Berechtigungsgruppe "Weißgrannen Züchter". Diese Gruppe beschränkt die Datenbasis auf diejenigen Tiere, die einer bestimmten Kaninchenrasse angehören (bestimmt durch das Attribut `zuechternummer`).
 
 Weitere Informationen zu dem Thema Security findet ihr hier:
 
 * [CUBA Security Subsystem Distilled](https://www.road-to-cuba-and-beyond.com/cuba-security-subsystem-distilled/)
