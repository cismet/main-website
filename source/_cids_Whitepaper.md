#Cids - Ein Werkzeug für die Entwicklung integrierter Fachanwendungen im Umfeld verteilter Daten- und Service-Infrastrukturen

Cids ist eine Plattform für die Entwicklung von Informationssystemen, bei denen die den Nutzer unterstützenden Geschäftsprozesse eine Vielzahl von heterogenen Informationsquellen, Geschäftsprozessen und Werkzeugen zusammenführen müssen, darunter auch Geo-Daten und Geo-Daten-Dienste. Diese – cids genannte – Plattform findet Anwendung in unterschiedlichsten Projekte und Lösungen. Sie integriert Prinzipien und Werkzeuge des modernen Software-Engineerings mit der verteilten Welt moderner Geodienste.

##Problemstellung

Viele praktische Anwendungen in Unternehmen und Behörden erfordern die Integration von Geodaten, Faktendaten, anderen Artefakten sowie Prozessen aus unterschiedlichen Werkzeugen. Häufig werden die Ursprungsinformationen in unterschiedlichen Systemen gepflegt (GIS-Datenquellen, Datenbanken, Dokumenten-Managementsysteme, ERP-Systeme usw.). Oft werden auch Geschäftsprozesse in unterschiedlichen Werkzeugen abgewickelt (GIS-Systeme, ERP-Systeme, spezialisierte Software).

Abb. 1:	Systembarrieren




Abb. 2:	Plattform-Architektur

Kern der Integrationsschicht ist eine Menge von Diensten, welche gemeinsam mit der sogenannten Integration Base verteilte Informationsquellen und Anwendungsprozesse in eine cids-SOA einbringt. Die logische Topologie dieser Vernetzung ist durch ein Domänenkonzept voll skalierbar, sowohl hinsichtlich der Verteilung von Lasten als auch hinsichtlich organisatorischer Aspekte. Es kann beliebig viele Domain Server geben, welche eine Integration Base publizieren. Die Intelligenz der Vernetzung steckt in der jeweiligen Integration Base, welche das Wissen über eines oder mehrere Quellsysteme abbildet. Die Integration Base beinhaltet auch umfangreiche Mechanismen für das Management von Nutzern, Gruppen, Rollen, deren Authentifizierung und Autorisierung sowie für die Personalisierung der Nutzersicht auf das Gesamtsystem. Ein Registry Server und ein Broker unterstützen die Anwendungen beim Zugriff auf die Dienste. Die angeschlossenen Quellsysteme können Systeme beliebigen Typs sein, darunter auch Geodaten-Dienste, welche über OGC-konforme Interfaces (WMS, WFS, SWE-Services und so fort) angesprochen werden.




![Abbildung 4](http://www.cismet.de/images/projects/screener/fiswassermv.png)
 
Abb. 3:	Der Navigator bei der Stadt Wuppertal (links), Editor zu einem komplexen Thema im System WRRL für das Land Mecklenburg Vorpommern (rechts)


 ![Abbildung 4](http://www.cismet.de/images/projects/screener/verdis.png)
 
