# K-Means Implementation

Das ist der Octave Sourcecode für die Rechnerübung zu Algorithmen der Bioinformatik II
Die Aufgabenteile werden jeweils in einem Skript bearbeitet.

* Script = 1a)
* Script2 = 1b)
* Script3 = 1c)
* Script4 = 1d)
* Script5 = 2)

Ansonsten werden einige Hilfsfunktionen zum plotten und Cluster initialisieren benutzt. Jedes Script speichert die erzeugten Bilder als png.
Der Cluster Algorithmus befindet sich in kMeans.m

## Aufgabe 1
### a)
Der K-means Algorithmus befindet sich in der Datei kMeans.m
Die Euklidische Distanz wird mithilfe einer Matrixmultiplikation berechnet. Anhand der Distanzmatrix werden die Punkte mit der niedrigsten Distanz dem jeweiligen Cluster zugefügt (über die min function).
Mit dem Punkten werden neue Centroids berechnet (Mittelwert aller Punkte in einem Cluster).
Anschließend wird der MSE der berechneten Cluster mithilfe der Distanz zwischen Centroid und Clusterpunkten ermittelt.

Die Manhatten Distanz wird in einer for-schleife ermittelt (Wie gestaltet man eine Matrixmultiplikation dafür?). Dies ist jedoch deutlich ineffizienter. Bei der Manhatten Distanz werden die Centroids (Clustroids?) ermittelt, indem der jeweilige Median der Cluster ermittelt wird.

Der MSE wird genutzt um das Abbruchkriterium "(Ei-1 -Ei)/Ei-1 <= 10-4" zu prüfen.
Wenn ein Cluster keine Punkte hat, werden die Centroids neu initialisiert.

#### Wie hoch wäre der Erwartungswert des mittleren quadr. Fehlers
var(x) = sqrt(std) = sqrt(0.5) = 0.25

#### Wird dieser Wert praktisch erreicht?
Nein, der Wert liegt eher bei 0.4 - 0.6

#### Wodurch lassen sich syst. Abweichungen erklären?
Die Cluster überschneiden sich stark. Der Erwartungswert würde erreicht werden, wenn der Centroid perfekt mittig liegt, aber die Cluster werden nicht klar erkannt, wodurch die Centroids sich meistens merkbar verschieben.

### b)
Als Startpunkte vorhandene Punkte im Datenset verwendet.
Mithilfe von randperm werden verschiedene Reihen der Matrix ermittelt, die ersten k reihen dienen dabei als Centroids.
Ansonsten ist diese aufgabe identisch mit a)

Unterschiede sind ebenfalls kaum erkennbar.
Durch die Initialisierung ist es allerdings nicht mehr möglich, dass ein Cluster leer bleibt (immer mindest den initialpunkt!). In der Praxis kam dies jedoch ohnehin kaum vor.

### c)
Bei c) wird zusätzlich die Clusteranzahl k variiert. Dies erfolgt über eine for-schleife von 2 bis 10. Der beste MSE für jedes K wird als Linienplot dargestellt

*Anmerkung: Beim Plotten wird die Lücke nicht beachtet, entweder wird die 1 als "0" geplottet, oder der ganze plot ist um 1 verschoben. Die erzeugten plots nutzen k-1, die X-Achse ist daher nicht ganz richtig.*

#### Mit Standardabweichung 0.5
Es ergibt eine relativ seichte kurve. Man kann einen gewissen Knick bei 4 erkennen, allerdings ist dieser nicht ganz so deutlich.

#### Mit Standardabweichung 0.25
Bei k=4 erkennt man eindeutig einen Einbruch der Qualitätsverbesserung. Das deutet daraufhin, dass k=4 wirklich die Anzahl der cluster ist (was auch der Fall ist!)

### d)
Wie Aufgabe c), nur mit der Manhatten Distanz.

*Anmerkung: Das Skript braucht sehr lange, da die Berechnung mit Manhatten Distanz für for-schleifen läuft.*

#### Mit Standardabweichung 0.5
Sehr ähnlich zu c), man erkennt keine klaren Cluster. Der Fehler ist allgemein etwas niedriger.

#### Mit Standardabweichung 0.25
Fast identisch zu c)

#### Cluster
Die Cluster bei 0.25 sind sehr stabil (wie auch bei der Euklidischen Distanz)
Die Cluster bei 0.5 sind ebenfalls etwas verschoben.


## Aufgabe 2
Die Daten werden geladen. Das Set muss transformiert werden, da ich Werte in Reihen geschrieben habe, statt in Spalten (zu spät aufgefallen. Allgemein auch sehr ungewohnt für mich). Der Algorithmus hat kein Problem mit der unterschiedlichen Anzahl an Dimensionen.

Ansonsten die selben plots wie schon bei 1d) und 1c)
Sowohl Manhatten als auch Euklidische Distanz sind sehr ähnlch. Die Manhatten Distanz scheint minimal markanter zu sein. Der Fehler ist bei beiden sehr ähnlich. Bei beiden lässt sich ein Knick bei 4 erahnen, womit die Vermutung nahe liegt, dass auch das Set 4 Cluster hat.

