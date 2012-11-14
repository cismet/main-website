<a href="http://cismet.github.com/"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_gray_6d6d6d.png" alt="Fork me on GitHub"></a>

#Entwickeln mit cids - Häufig gestellte Fragen



##Was ist cids?
cids ist ein Baukastensystem, mit dem maßgeschneiderte Softwaresysteme mit starkem Geobezug gebaut werden können. Cids basiert auf einer (oder mehreren) relationalen Datenbank(en) und einer darauf abgestimmten Serviceinfrastruktur. Das System stellt eine Standardbenutzeroberfläche (cids Navigator) zur Verfügung, die an vielen Stellen an die individuellen Anforderungen des zu erstellenden Softwaresystems angepasst werden kann. Die zentralen Komponenten von cids werden in folgendem Schaubild aufgeführt.

![image](http://www.cismet.de/images/faq-images/cids_components.png)

Durch die ausgeprägte Flexibilität und Erweiterbarkeit von cids kann mit geringem Entwicklungsaufwand auf die Bedürfnisse der Nutzer eingangen werden. Dadurch wird, ähnlich wie bei einer individuellen "from scratch" entwickelten Anwendung, eine optimale Unterstützung der jeweiligen Arbeitsprozesse erreicht. Der Aufwand und die damit verbundenen Kosten sind jedoch wesentlich geringer, da der Baukasten schon viele Standardaufgaben (Authentifizierung, Rechte, Kartendarstellung, …) löst und sich der Entwickler auf die Unterstützung der eigentlichen Arbeitsprozesse konzentrieren kann.
##Was ist cismap?
Ein großer Baustein in unserem Baukastensystem ist das cismap-Framework. Es ist die Basis der WebGIS Komponente des cids Baukastensystems, die den räumlichen Kontext beliebiger Objekte visualisiert,  aber auch als Ausgangspunkt für eigene GIS-Apps dienen kann, mit denen sehr benutzerspezifische Workflows abgebildet werden. Schwerpunkt von cismap ist die Integration OGC konformer Dienste (WMS,WFS,...).



##Was kostet cids?
Für die Benutzung von cids in Ihren Projekten fallen keine Lizenzkosten oder Gebühren an. 
Die einzelnen Projekte stehen entweder LGPL/GPL und sind dadurch für jeden frei nutzbar. 
Die einzigen Kosten, die entstehen, sind die Kosten für eventuelle Schulungen, Zertifikate oder Support.

##Welche Technologien stecken hinter cids/cismap?
Unsere Services und Komponenten sind in der Programmiersprache [Java](http://www.oracle.com/technetwork/java/index.html) entwickelt. Die graphischen Benutzeroberflächen cids Navigator und cismap sind [Java Swing](http://docs.oracle.com/javase/tutorial/uiswing/) Komponenten. Die Anwendungen werden als Web-Applikationen mit [Java-Webstart](http://www.java.com/de/download/faq/java_webstart.xml) verteilt und vereinen so zentrales Deployment mit den Vorteilen einer lokalen Applikation. Als Datenbankbackend setzen wir bei unseren Installationen auf die Kombination [PostgreSQL](http://www.postgresql.org)/[PostGIS](http://postgis.refractions.net), wobei auch andere Datenbankmanagementsysteme, die mit einer sogenannten Spatial Extension ausgestattet werden können, möglich sind. Die Kommunikation der Client-Komponenten mit der Serviceinfrastruktur wird über RESTful-Webservices abgewickelt, was sowohl hinsichtlich Sicherheit (volle Verschlüsselung über SSL) als auch hinsichtlich Portstabilität und Anbindung von Drittsystemen (in Entwicklung) eine gute Wahl darstellt. 

Als Entwicklungsumgebung sowie bei unseren Tools ABF und JPresso setzen wir auf die Netbeans Rich Client Plattform. Durch aktive Beiträge zur Netbeans-Community sind wir [Netbeans Strategic Partner](http://netbeans.org/community/partners/list-strategic.html) geworden.

![image](http://www.cismet.de/images/faq-images/nb_sp_250px.png)
##Welche Art von System kann man mit cids/cismap bauen?
Wie man das von Baukästen kennt, sind hier die Grenzen nur von der Phantasie des Entwicklers (und natürlich den Anforderungen der Nutzer) beschränkt ;-).

Trotzdem folgen hier die 4 häufigsten Klassen der Verwendung des cids Baukastens für die Entwicklung von Applikationen/Informationssystemen:
####SG: Geodatenviewer 
Eine Applikation basierend auf dem cismap Framework, die als Geodatenviewer dient. Diese Art von Applikation wird oft parallel zu einem bestehenden Komplettsystem mit Navigator betrieben und kann von Nutzern ohne Anmeldung zur Visualisierung von Ergebnissen OGC-konformer Dienste oder lokaler Daten (SHP,GML,…) genutzt werden.

![image](http://www.cismet.de/images/faq-images/cismap_standalone.png)

Auch hier ist es möglich, nutzerspezifische Erweiterungen einfach in die Anwendung zu integrieren. So können zum Beispiel Ortsinformationen über angepasste Gazetteer-GUI's, deren Daten von OGC-kompatiblen WFS-Diensten kommen, genutzt werden. Es können sogar vollständig angepasste Datenformulare hinzugefügt werden, die dann zum Beispiel über einen OGC konformen WFS-T Dienst ihre Daten erhalten und speichern.
####SN: Komplettsystem mit Navigator 
Ein Informationssystem, bei dem der sogenannte cids Navigator als Benutzeroberfläche genutzt wird und mindestens eine Integration Base (Datenbank) betrieben wird. 

![image](http://www.cismet.de/images/faq-images/fis_wasser1.png)

In einem Katalog können die Daten im System auf beliebige Art und Weise geordnet und strukturiert werden. Ein System mit diesem Aufbau besteht aus einem oder (meistens) mehreren sogenannten Fachthemen (Thematisch wird auch in ähnlichem Zusammenhang von Fachschalen gesprochen). Diese Fachthemen bilden einen Arbeitsprozess durch geeignete Erweiterungen und Datendefinitionen ab und können von bereits bestehenden Funktionalitäten des Systems profitieren. So können zum Beispiel alle Objekte eines Themas (sofern sinnvoll und zulässig) über eine räumliche Suche gefunden werden. Die Darstellung von Objekten mit einem räumlichen Kontext in der Karte ist eine weitere Funktionalität, die für jedes Fachthema einfach zu Verfügung steht. Des weiteren können Entwickler selbstverständlich alle Erweiterungsmöglichkeiten des Geodatenviewers nutzen.

Um die Objektdaten optimal auswerten und bearbeiten zu können, werden sie dem Nutzer in der Regel nicht in einer Standard-Ansicht, sondern in einer auf den individuellen Arbeisprozess angepassten Form  präsentiert. Ein Rechte- und Sichtenkonzept sorgt hier für eine fein einstellbare Abstufung der Zugriffskontrollmechanismen, um komfortabel kontrollieren zu können, welcher Benutzer welche Daten einsehen oder verändern darf. Auswertungen und Reports sind einfach zu integrieren und können direkt in der Applikation angezeigt werden (z.B.: interaktive Auswertung von Zeitreihen) oder über Standardwerkzeuge (z.B.: PDF-Ausgabe )weiterverabeitet werden.
 
![image](http://www.cismet.de/images/faq-images/fis_wasser2.png)

####SF: Fachanwendung 
In Fällen, in denen ein besonders schlankes User Interface, das speziell für einen Anwednungsfall optimiert ist, benötigt wird oder in denen sehr spezielle Interaktionen, zum Beispiel mit der Kartenkomponente, notwendig sind, entscheiden wir uns in der Regel für eine sogenannte Fachanwendung. Die Benutzeroberfläche wird hier unter Verwendung bestehender Komponenten (Karte, Dokumentenbereich, …) ohne Nutzung der Baukastenbenutzeroberflächen Navigator oder cismap entwickelt. Da aber die Kommunikations- und Serviceschicht unverändert von cids genutzt werden können, ist diese Art der Entwicklung immer noch wesentlich effizienter als eine "from scratch" Neuentwicklung. So sind zum Beispiel die Berechtigungskonzepte die gleichen wie bei einem Komplettsystem mit Navigator. Unterschiedliche Klassen von Anwendungen können sich sogar eine Datenbasis teilen.

![image](http://www.cismet.de/images/faq-images/lagis.png)

Beispiele für Applikationen dieser Kategorie sind LagIS, eine Applikation zum Management städtischer Liegenschaften ,oder VerDIS/GrundIS, eine Applikation zum Management der versiegelten Flächen aller Haushalte einer Kommune zur Berechnung der Abwassergebühr.

####SO: cids Server mit proprietären Clients (Webapps, Mobile Apps) (in Entwicklung) 
Die Öffnung der Server-API für Drittanwendungen ist im Moment in Entwicklung. Dadurch wird es einfach möglich die Server-Funkionalitäten von cids in Bereichen zu nutzen, die bisher nicht von cids Bausteinen profitieren konnten. Über eine öffentliche REST-Schnittstelle können dann Anwendungen die cids-Server-Infrastruktur nutzen, ohne auf die Java-Technologie-Familie festgelegt zu sein. Beispiele für diese Applikationen sind Smartphone-Apps oder HTML5/Javascript Webseiten (Webapps), die die Vorteile von cids wie serverseitige Historisierung, das Berechtigungskonzept oder die Integrationsmöglichkeiten (Objekte werden aus unterschiedlichen Quellen "zusammengebaut") einfach nutzen können.
##Kann man diese Systemarten miteinander kombinieren?
Natürlich können diese Systemklassen beliebig miteinander kombiniert und parallel betrieben werden. Nachfolgend eine kleine Kostprobe:

* Der Geodatenviewer ist ein Plugin im Navigator
* Jede Fachanwendung kann ein Plugin im Navigator sein
* Beschreibungsseiten des Navigators können in Fachanwendungen angezeigt werden
* Daten aus Fachanwendungen können im Navigator visualisiert werden
* Fachanwendungen können miteinander kommunizieren und sich so synchronisieren
* Daten, welche mit einer mobilen Applikation eingepflegt wurden können mit einer Fachanwendung oder mit dem Navigator weiterverarbeitet werden und anschließend über eine WebApplikation zur Verfügung gestellt werden.

Hier sind dem Systemarchitekten kaum Grenzen gesetzt.

##An welchen Stellen kann man ein bestehendes cids System erweitern?
ExtensionPoint|Erläuterung                                                                    |SG  |SN  |SF  |SO  |
--------------|--------------------------------------------------------------------------------|:--:|:--:|:--:|:--:|
toString Methode|Anpassung der Textrepräsentation eines Objektes.                               |    |X   |X   |X   |
WFSForms|Erstellung von angepassten GUI's, die über WFS Abfragen die Position der Kartenkomponente manipulieren können.|X   |X   |X   |   |
dynamischer Baum|Eigenschaftsabhängige Strukturen können mit der Definition eines dynamischen Baums erstellt werden. ||X|||
Renderer|Die Objektdarstellung auf der sogenannten Beschreibungsseite wird mit einem Renderer definiert.  ||X|X||
Aggregationsrenderer|Wird bei Mehrfachauswahl eines Objektes eine besondere Darstellung benötigt (Übersichtstabelle, Auswertungen, …), kann diese Darstellung im Aggregationsrenderer definiert werden. ||X|X||
Editoren|Benutzerdefinierte Formulare zum Verändern von Datensätzen werden in den sogenannten Editoren definiert.  ||X|X||
Reports |Objektinformationen können in frei definierbaren Reports ausgegeben werden. ||X|X|X|
Extension-Factorys|Objekte können im Server mit Informationen aus Drittsystemen angereichert werden. Diese Objektmanipulation wird in einer Extension Factory definiert. ||X|X|X|
Icon-Factorys|Eigenschaftsabhängige Iconrepräsentationen werden in einer IconFactory definiert. ||X|X||
ServerSearches|Um Objekte mit einer angepassten Suche finden zu können, kann man auf dem Server eine vorkonfigurierte Suche hinterlegen, die dann von der Anwendung parametrisiert und aufgerufen wird. ||X|X|X|
GuiComponentProvider|Mit der GuiComponentProvider können beliebige Benutzeroberflächen in die jeweilige Anwendung integriert werden. |X|X|X||
CustomPermissionProvider|Werden (objekt)eigenschaftsabhängige Rechte benötigt, werden die Regeln dazu in einem CustomPermissionProvider hinterlegt. Ein Beispiel hierfür ist ein orts- und zeitabhängiges Recht ein bestimmtes Objekt zu bearbeiten.| |X|X|X|
FeatureRenderer|Mit einem Featurerenderer kann die Visualisierung eines Objektes auf der Karte beeinflusst werden. ||X|X||
Bean-Actions|Werden für ein bestimmtes Objekt angepasste Aktionen (z.B.: markiere diesen Plan als geprüft) benötigt, so werden diese Aktionen in Bean-Actions definiert und können dann zum Beispiel im Baum des Navigators als Kontextmenü angezeigt werden. ||X|X||
Map-Actions|Werden in einem Workflow Aktionen an einem bestimmten Punkt auf der Karte benötigt (z.B.: "spez. GeoMarker hier anlegen" ), werden diese Aktionen in sogenannten  Map-Actions definiert. |X|X|X||
cids-trigger|Mit cids-Triggern können, ähnlich wie bei Datenbanken, vor und nach bestimmten Aktionen auf dem Server (Laden, Speichern, Löschen, …) benutzerdefinierte Aktionen angestoßen werden. ||X|X|X|
Server-Actions|Mit sogenannten Server-Actions können beliebige Aktionen und Prozesse auf dem Server gestartet und deren Ergebnisse abgefragt werden. ||X|X|X|
MapvisualisationProvider|Wenn für ein Objekt eine andere Visualisierungsart benötigt wird (z.B.: animierte Visualisierung des momentanen Standorts über einen Service-Call), wird diese in einem MapvisualisationProvider hinterlegt.  ||X|||
FeatureinfoDisplay|Mit einem angepassten FeatureinfoDisplay können die Ergebnisse eines OGC-WMS-GetFeatureInfo-Request benutzerdefiniert aufbereitet werden (z.B.: interaktive Zeitreihenvisualisierung). |X|X|X||
CommonFeatureActions|Eine benutzerdefinierte Aktion auf einem Geometrieobjekt eines beliebigen Typs wird in einer CommonFeatureAction hinterlegt.  |X|X|X||
Optionspanelcontroller/category|Einstellungen eines bestimmten Workflows können im zentralen Optionsdialog erscheinen, wenn die entsprechenden Definitionen im Optionspanelcontroller hinterlegt werden.|X|X|X||
Takeoff- / Startup- / Shutdownhook|Beim Starten und Beenden des cids Navigators können mit dem  passenden Hook benutzerdefinierte Aktionen durchgeführt werden. ||X|||

##Wie sieht so eine Erweiterung aus?
Bis auf wenige Ausnahmen, etwa beim dynamischen Baum, wird die Anpassung durch die Implementierung einer (einfachen) Java-Klasse erreicht. Die Implementierung wird durch sogenannte Abstrakte Klassen sehr stark vereinfacht und geleitet. Laien stellen sich eine solche Abstrakte Klasse am besten als einen Lückentext vor, an dem man nur noch die entscheidenden Informationen eintragen muss.

Sehen Sie im folgenden ein Beispiel für ein toStringMethode für ein Objekt vom Typ "Baulastart":
<pre>
public class AlbBaulastArtToStringConverter extends CustomToStringConverter {

    //~ Methods ----------------------------------------------------------------

    @Override
    public String createString() {
        final Object baulastArt = cidsBean.getProperty("baulast_art");
        if (baulastArt != null) {
            return String.valueOf(baulastArt);
        } else {
            return "Keine Art angegeben";
        }
    }
}
</pre>
In der abstrakten Implementierung der Oberklasse werden die entsprechenden Daten in der Variable `cidsBean` gesetzt, so dass sich der Entwickler nur noch darum kümmern muss, die richtige Textrepräsentation zu erzeugen. 

In einem weiteren Beispiel wird mit einem FeatureRenderer die graphische Darstellung in einer Karte gesteuert. Hierzu müssen im Wesentlichen folgende Methoden implementiert werden:

<pre>
public interface FeatureRenderer {
    public abstract java.awt.Stroke getLineStyle();
    public abstract java.awt.Paint getLinePaint();
    public abstract java.awt.Paint getFillingStyle();
    public abstract float getTransparency(); 
    public abstract FeatureAnnotationSymbol getPointSymbol();
}
</pre>

Ein Renderer, der Punktgeometrien abhängig von einem Attribut darstellt (Je größer die Hausnummer, desto größer der Kreis), würde folgendermaßen aussehen (entscheidende Methode): 

<pre>
...
public FeatureAnnotationSymbol getPointSymbol() {
    int size=1;
    try {
        int number=new Integer(cidsBean.getProperty("hausnummer"));
        size+=number;
    } catch (Throwable t) {
        log.warn("Fehler in getPointSymbol()",t);
    }
    BufferedImage bi= new BufferedImage(size,size,BufferedImage.TYPE_INT_ARGB);
    Graphics2D graphics = (Graphics2D) bi.getGraphics();
    graphics.setColor(Color.orange);
    graphics.fillOval(0,0,size,size);
    FeatureAnnotationSymbol symb=new FeatureAnnotationSymbol(bi);
    symb.setSweetSpotX(0.5);
    symb.setSweetSpotY(0.5);
    return symb;
}
...
</pre>
Würde man mit dieser gemachten Anpassung eine Reihe von Adress-Objekten in der Karte darstellen, würde das Ergebniss in etwa so aussehen:

![image](http://www.cismet.de/images/faq-images/customFeatureRenderer.png)

##Muss ich alle Erweiterungen einsetzen/implementieren?
Nein, natürlich bieten wir an fast allen Stellen eine sinnvolle Standardimplementierung oder Konfiguirationsmöglichkeit ohne Programmierung an.

##Wo gibt es den cids-Quellcode?
Der Quellcode von cids ist unter der Adresse [http://cismet.github.com](http://cismet.github.com) erhältlich. Dort finden sich eine Vielzahl von Projekten, die den Quellcode der Kernkomponenten erhalten, alle Tools die wir zur Administration des Systems entwickelt haben, sowie alle Erweiterungen die bei laufenden Installationen verwendet werden.

Bis auf lokale (nur beim Kunden liegende) Konfigurationsdateien, die z.T. vertrauliche Informationen erhalten, befinden sich alle Quelldateien auf [Github](http://cismet.github.com). Es gibt weder private Repositories, die zum Build benötigt werden, noch andere Geheimnisse.


##In welchen Projekten wird cids verwendet?
Eine Übersicht unserer Referenzen finden Sie auf unserer [Webseite](http://www.cismet.de/#refs).

###Kann ich ein cids System selbst bauen und starten?
Alle Projekte werden von uns so benutzt und gebaut wie sie auf Github sind. Zu einem lauffähigen System sind viele gebaute Projekte inklusive einer passenden Datenbank notwendig. Wir arbeiten an einer Entwickler-Demo mit der man ein minimales System selbst bauen und starten kann. 

##Warum sollte ich cids benutzen?
Gründe für die Verwendung vom cids Baukastensystem sind unter anderem:

* Einfache Einbindung von Geoinformationen in den Arbeitsprozess
* Standardfunktionen wie Zugriffskontrolle, Recherche, ... müssen nicht immer wieder neu implementiert oder integriert werden
* Kommunikation zwischen schon bestehenden cids Anwendungen oder Themen ist sehr einfach
* Auf cids basierende System können einfach ergänzt werden (z.B. um weitere Themen)
* Beim Betrieb mehrerer auf cids basierender Systeme können Erweiterungen allen Systemen zugute kommen
* Auf Basis von cids lassen sich maßgeschneiderte Lösungen effizient entwickeln

##Welche Voraussetzungen braucht man, um mit cids zu entwickeln?
Da, in den meisten Fällen, die Erweiterungen durch Programmierung vorgenommen werden, sollten Sie die Grundlagen objektorientierter Programmierung und Softwareentwicklung kennen und anwenden können.

Sollten Sie mit den folgenden Begriffen wenig anfangen können, wäre ein Einstieg über unser cismet Basics Schulungsprogram ratsam:

* Abstrakte Klasse
* Vererbung
* Swing
* Event Dispatcher Thread
* SQL
* PostGis

##Gibt es ein Schulungsprogramm, in dem ich lernen kann ein cids/cismap System zu entwickeln oder zu erweitern?

Ja, für die Weiter- oder Neuentwicklung von Systemen gibt es unterschiedliche Schulungsprogramme:

###cids Schulungsprogramm
Grundlagen  | Programmierung | Administration |
 ------------ | ----------- | ----------- |
cids Basics       |  Cids Customizing I   |       cids System Setup |
       |  Cids Customizing I a    |          |
       |  Cids Customizing II      |          |
       |  Cids Customizing III     |          |


###cismap Schulungsprogramm
Grundlagen  | Programmierung | Administration |
 ------------ | ----------- | ----------- |
cismap Basics  | 
cismap Advanced  | 

###cismet Basics Schulungsprogramm
Grundlagen  | Programmierung | Administration |
 ------------ | ----------- | ----------- |
			  |GUI Programmierung  | 
Continous Integration|
Maven|

Wir bieten alle Pakete als Workshop an. Jeder Teilnehmer erhält ein Zertifikat (Silver). 
Für ausgewählte Workshops bieten wir zusätzlich ein Gold Zertifikat an, 
das durch Bestehen einer Prüfung erworben wird. Beide Arten von Zertifikaten ermöglichen eine Teilnahme am cids Qualitätssicherungsprozess (QA-Prozess).

### Alle Schulungen auf einen Blick
* cids Basics: Konzepte, Strukturen und Bedienung 
* cids System Setup: DB Schema, Design und Installation
* cids Administration: Werkzeuge, Baumdefinition, Do's and Don'ts
* cids Customizing I: Konzepte, Renderer und Editoren
* cids Customizing Ia: Reporting
* cids Customizing II: weiterführende Konzepte, Features und Custom Queries
* cids Customizing III: Integration externer Applikationen, Crossover Projekte und Plugin Schnittstelle 
* cismap Basics: Grundlagen, API und erste Schritte
* cismap Advanced: App Entwicklung, Services und Features  
* cismet Basics: GUI Programmierung mit Java Swing
* cismet Basics: Continous Integration
* cismet Basics: Maven

###Wie lange dauern die Schulungen?
Die Schulungen cids Basics, cismap Basics und cids Administration dauern jeweils einen Tag. 
Die Customizing und cismap Advanced Schulungen dauern jeweils 4 Tage. 
Die Workshops haben einen theoretischen und praktischen Teil. 
Im praktischen Teil steht neben den Referenten noch ein zweiter cismet Mitarbeiter 
unterstützend zur Verfügung.

###Was kostet eine Schulung?

Modulart  | Workshop / Silver | Prüfung / Gold |
:-------------  | :-----------: | :-----------: |
    Short (8 Stunden)				|         1500,- |      150,- pro Person |
    Intense (4 Tage)				|          6000,- |      250,- pro Person|
    
Selbstverständlich sind auch Module in den Räumlichkeiten von Kunden möglich. 
Bitte kontaktieren Sie uns in diesem Fall und wir werden mit Ihnen ein entsprechendes Angebot erarbeiten.   


##Ist eine Schulungsreihenfolge vorgeschrieben?
Im Prinzip ist die Reihenfolge der (cids) - "Schulungen auf einen Blick" empfehlenswert. 
Nach einem individuellen Dialog kann aber von dieser Reihenfolge abgewichen werden. 

##Was ist der cids QA-Prozess?
Durch den cids QA-Prozess wird es dem Betreiber eines cids Systems ermöglicht die Weiterentwicklung von unterschiedlichen Partnern durchführen zu lassen, aber gleichzeitig eine durchgehende Qualität sicherzustellen. 

Einzelne Komponenten und Komponentengruppen können von Dienstleistern entwickelt und nach Fertigstellung zum Review in den cids QA-Prozess übermittelt werden. Wir prüfen den Code nach unseren Qualitätskriterien und zertifizieren das Paket.

Voraussetzung für die Teilnahme am cids QA-Prozess ist ein Schulungszertifikat im jeweiligen Bereich. Weitere Kosten können aus der unterstehenden Tabelle ermittelt werden:

	
Schulungszertifikat in:   | Silver | Gold |
:-------------  | :-----------: | :-----------: |
        Komplexitätsstufe C0				|         16,- |       12,- |
        Komplexitätsstufe C1				|          32,- |      24,- |
        Komplexitätsstufe C2				|         64,-  |      48,- |
        Komplexitätsstufe C3				|         128,- |      96,- |
        Komplexitätsstufe C4				|         256,-  |     192,- |
        Komplexitätsstufe C5 (nach Angebot)	|||


##Warum sollte ich meine cids Erweiterungen zertifizieren lassen?
Wenn Sie das cids System betreiben und auch die Wartung für dieses System übernommen haben, macht es keinen Sinn Ihre eigenen Komponenten zertifizieren zu lassen. Wenn Sie allerdings Erweiterungen für ein bestehendes System implementieren und dieses System von einem anderen Dienstleister gewartet wird, kann es sein, dass der Auftraggeber der Erweiterung eine gewisse Qualitätsbestätigung benötigt. Diese Bestätigung bieten wir in Form einer Zertifizierung an. 

##Wie kann ich meine Erweiterungen zertifizieren lassen?
Sie machen einen Fork der aktuellen Version des entsprechenden Customization-Projektes über Github. Wenn Sie Ihre Erweiterung implementiert und getestet haben, reichen Sie diese Erweiterung über einen sogenannten dokumentierten Pull-Request über Github ein. Wir ordnen die Erweiterung dann einer Komplexitätsstufe zu und Sie geben uns das erneute OK zur Zertifizierung.

##Was ist mit Erweiterungen/Bugfixes der core Komponenten?
Erweiterungen und Bugfixes der core Komponenten können (ohne Kosten für Sie) über Pull-Requests unserer Code-Base hinzugefügt werden.

##Kann ich Sie anrufen, wenn ich nicht mehr weiter weiß?
Unser Geschäftsmodell besteht aus Softwareentwicklung auf Basis von cids, der Wartung von cids-basierten Systemen, dem Schulen in der Benutzung des cids Baukastensystems und der Beratung von Entwicklern die mit cids entwickeln. Um also von uns bei der Entwicklung mit cids unterstützt zu werden, müssten Sie Teilnehmer in einem unserer Support-Programmen sein.

##Welche Entwickler Support Programme gibt es und was kosten sie?
Wir haben 2 Entwickler Support Programme aufgelegt: Basic und Premium. In der untenstehenden Tabelle finden Sie die Eckpunkte der Programme und den Preis pro Monat. 
Bei der individuellen Anpassung an Ihre Bedürfnisse beraten wir Sie gerne.


 Details:  | Basic | Premium |
:-------------  | :-----------: | :-----------: |
        KnowledgeBase				|        X  |   X    |
        Support Modes				|          Tel./ Skype <br>eMail <br> Remote|      Tel./ Skype <br>eMail <br> Remote |
        Support Hours				|         10 - 16 Uhr  |      8 - 18 Uhr|
        Initial Response Time		|         1 Arbeitstag|      2 Stunden |
        Anzahl Anfragen				|         8 / Monat |      20 / Monat |
        parallele Anfragen				|         1 |      3 |
        Ansprechpartner				|         1 |      3 |
        Preis pro Monat				|         500,- |      750,- |

##Wie siehts mit dem Kleingedruckten aus? ;-)
* Alle aufgeführten Preise sind unverbindlich und dienen der Orientierung. Bitte kontaktieren Sie uns unter [info@cismet.de](mailto:info@cismet.de), wenn Sie ein verbindliches Angebot benötigen oder weitere Fragen haben.
* Alle aufgeführten Preise sind in € und zuzüglich der jeweils gültigen Mehrwertsteuer zu verstehen.
