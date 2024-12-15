# theoarc
Dieses Repositorium widmet sich den Daten aus einem durchgeführten Projekt im Rahmen einer Masterarbeit der Digitalen Geisteswissenschaften. Das Projekt wurde im Jahre 2024 an der Karl-Franzens-Universität in Graz durchgeführt und trägt den Titel **"Handwritten Text Recognition und Text Reuse für digitale Editionen, am Beispiel zweier alchemischer Texte des 17. Jahrhunderts"**. Es beschäftigt sich mit zwei alchemischen Texten (der **"Theosophia Aegytiorum"** und den **"Arcana Arcanissima"**) aus dem frühen 17. Jahrhundert des Alchemisten Michael Maier (1568/9-1622). Die Digitalisate der beiden Werke wurden von der [UB Leipzig](https://www.ub.uni-leipzig.de/forschungsbibliothek/digitale-sammlungen/mittelalterliche-handschriften-alte-seite/handschriften-der-ms-signaturenreihe) sowie der [Herzog August Bibliothek Wolfenbüttel](https://www.hab.de/) bereitgestellt.
Dabei wurden zum einen ein eigenes HTR-Modell auf Transkribus - Dank eines von Transkribus bereitgestellten Scholarships -  trainiert und zum anderen zwei Digitale Editionen im TEI-XML-Format der beiden behandelten Texte erstellt. Zusätzlich wurde mittels der Methode der Text-Reuse-Detection ein Vergleich der beiden Texte auf wortwörlicher Ebene automatisiert durchgeführt. Dafür wurden das Paket **textmatcher** von Python sowie **CollateX** verwendet. Auf diese Weise können übereinstimmende Textpassagen zwischen zwei Texten automatisiert identifiziert und anschließend in verschiedenen Formaten dargestellt und exportiert werden.

__Zu finden sind im Repositorium:__
- im **TEI-XML** folder die beiden Digitalen Editionen der Theosophia und den Arcana im TEI-XML-Format
- im **arcana** folder die in die sechs Kapitel unterteilten Arcana in Form von Textdateien für die spätere Übergabe an die Jupyter-Notebooks
- im **collation** folder die nach der Übergabe an text-matcher und CollateX final entstandenen TEI-Snippets, welche die korrellierenden Textstellen beinhalten im TEI-XML-Format
- im **graphics** folder die aus den gelieferten Ergebnissen der Text-Reuse-Detection aufbauenden Visualisierungen mittels matplotlib
- im **models** folder festgehaltene Screenshots des auf Transkribus umgesetzten HTR-Modelltrainings
- im **notebooks** folder die erstellten Jupyter-Notebooks, welche den Code für die Text-Reuse-Detection und Weiterverarbeitung mit CollateX beinhalten
- im **output** folder die aus der Text-Reuse-Detection entstandenen Textdateien, welche die übereinstimmenden Textpassagen beinhalten
- im **theosophia** folder die Textdatei des Manuskripts der Theosophia als Basis für die Text-Reuse-Detection
- im **xslt** folder ein XSLT-sheet, welches das TEI-XML in die für die Text-Reuse-Detection benötigte TXT-Datei, mit ein paar Adaptierungen, transformiert
- im **normalisierungen.md** file die vorgenommenen Normalisierungen im Zuge des Preprocessings für die Erstellung der TXT-Dateien der Theosophia und den Arcana


## License
[Attribution 4.0 International CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)
