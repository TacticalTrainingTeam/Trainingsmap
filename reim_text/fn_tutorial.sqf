/*
    author = Reimchen
    description = n.a.
*/

disableSerialization;

_display = findDisplay 5200;

_ControlsGroup = _display ctrlCreate ["RscControlsGroup", 5201];
_ControlsGroup ctrlSetPosition [(0.335008 * safezoneW + safezoneX), (0.290983 * safezoneH + safezoneY), (0.329984 * safezoneW), (0.48404 * safezoneH)];
_ControlsGroup ctrlCommit 0;

_StructuredText = _display ctrlCreate ["RscStructuredText", 5202, _display displayCtrl 5201];
_StructuredText ctrlSetPosition [0, 0, (0.308984 * safezoneW), (3 * safezoneH)];
_StructuredText ctrlCommit 0;
_StructuredText ctrlSetBackgroundColor [0,0,0,0.8];
_StructuredText ctrlSetStructuredText parseText "
<t underline='true'><t size='2'>Vorwort</t></t><br />
<br />
Hallo lieber Leser, ich bin Reimchen und Hauptentwickler dieser Mission.<br />
Es freut mich das du das Tutorial gestartet hast und nun diese Zeilen liest.<br />
Vorne weg, was bietet dir dieses Tutorial?<br />
- Es soll dir alle Funktionen / Möglichkeiten zeigen, die du in dieser Mission hast.<br />
<br />
<br />
<t underline='true'><t size='1.5'>Inhaltsverzeichnis</t></t><br />
- Funktionen<br />
            - Allgemeines<br />
            - Reim_Arsenal<br />
            - Reim_Teleporter<br />
- Orte<br />
            - Sammelplatz<br />
            - Übungsplatz<br />
            - Panzerplatz<br />
            - Pionierplatz<br />
            - CQB-Gelände<br />
            - Mörserplatz<br />
            - Luftfahrtgelände<br />
            - Tribüne<br />
- Schlusswort<br />
<br />
<br />
<t underline='true'><t size='1.25'>Funktionen</t></t><br />
<t underline='true'><t size='1.1'>Allgemeines</t></t><br />
Beim Bau der einzelnen Stationen habe ich darauf geachtet, dass die Funktionen immer an den gleichen Objekten angebracht wurden. D.h. das alle Flaggen, die mit einem TTT-Logo oder einer TTT-Truppfarbe versehen sind, ein Reim_Teleporter oder W_Teleporter sind oder das alle Notitzschilder, Funktionen zur jeweiligen Station beinhalten (Übungen starten etc.). Die Funktionen erreichst du in der Regel über das ACE-Fremdinteraktionsmenü, in einzelnen Fällen kann es auch durch das Mausradmenü geschehen.
<br />
<br />
<t underline='true'><t size='1.1'>Reim_Arsenal</t></t><br />
Das Reim_Arsenal steht an mehreren Stationen bereit und erlaubt dir, die verschiedenen Loadouts der TTT-Klassen auszuprobieren. Um das Reim_Arsenal zu nutzten, musst du zuerst eine Seite auswählen und diese dann mit dem 'OK-Button' bestätigen, dass Ganze machst du dann noch mit der Fraktion und zum Schluss mit der Klasse. Fertig! Nun kannst du deine gewählte Klasse probieren.
<br />
<br />
<t underline='true'><t size='1.1'>Reim_Teleporter</t></t><br />
Der Reim_Teleporter ist wie schon oben erwähnt an jeder Stationsflagge angebracht. Die Nutzung ist sehr simpel gehalten. Du wählst den Ort an dem du dich teleportieren möchtest aus und bestätigst das Ganze mit dem 'Teleportieren-Button' auf der rechten Seite.
<br />
<br />
<br />
<br />
<t underline='true'><t size='1.25'>Orte</t></t><br />
<t underline='true'><t size='1.1'>Sammelplatz</t></t><br />
Der Sammelplatz ist der Startpunkt (Spawnpunkt) der Mission so wie auch der Respawnpunkt. Weiterhin gibt es hier ein Museum, wo du dir zu verschiedensten Themen wissenswertes anschauen bzw. durchlesen kannst. Du findest das Museum im langen Gebäude hinter den Truppschildern. Ebenfalls am Sammelplatz befinden sich die TTT-Spawner für Luft- Bodenfahrzeuge und Kisten. Die Spawner sind außerhalb, in Richtung Flugfeld zu finden. Du kannst aber auch durch den Reim_Teleporter dort hingelangen. Anmerkung zum Spawner: Hier stehen keine Schilder sonder KI-Soldaten, die als Funktionsträger fungieren.
<br />
<br />
<t underline='true'><t size='1.1'>Übungsplatz</t></t><br />
Der Übungsplatz ist der zentrale Punkt vieler Infanterieübungen, die man alleine oder gemeinsam durchspielen kann, um seine Fähigkeiten zuverbessern. Des Weiteren ist der Übungsplatz der Ort, an dem das Einsteigerevent stattfindet. Neben zwei Schießbahnen mit eigenem Reim_Arsenal gibt es dort ein Museum, wo die gesamte TTT-Ausrüstung ausgestellt ist. Ebenfalls am Übungsplatz befindet sich ein Hangar mit TTT-Formationsschildern. So erhält man schnell und einfach einen Überblick über die gängigsten Formationen im TTT. Ein weiteres wichtiges Feature des Übungsplatzes ist der medizinische Bereich. Dort hast du die Möglichkeit Verletzte zu spawnen um dich mit dem ACE-Medical vertraut zu machen und dich zu verbessern. Das Ganze rundet ab, ein Granatenwurfhaus und eine Parcourstraße. Die Parcourstraße ist mit Zielen für kleine sowie größere Verbände bestückt.
<br />
<br />
<t underline='true'><t size='1.1'>Panzerplatz</t></t><br />
Der Panzerplatz ist primär zum Üben mit gepanzerten Fahrzeuge gedacht. Er bietet durch die Möglichkeit der Zielerstellung (Made by Redd) optimale Gegebenheiten um den Umgang mit gepanzerten Fahrzeugen zu lernen oder zu verbessern. Damit man sich auch mit allen vorhandenen Panzerfahrzeugen vertraut machen zu können, gibt es auch hier einen Fahrzeugspawner für Panzerfahrzeuge. Die Zielerstellung erreicht man indem man sich am Panzerfahrer per Mausradmenü zum Panzerkommandant befördern lässt. Dann auf einer der Schießplatten fahren und dort angekommen kann man über das Mausradmenü verschiedene Einstellungen tätigen um sich Ziele zu setzten und diese zu bekämpfen. Des Weiteren beinhaltet der Panzerplatz eine Tribüne, von der es möglich ist, den Panzern zu zuschauen.
<br />
<br />
<t underline='true'><t size='1.1'>Pionierplatz</t></t><br />
Der Pionierplatz ist das Herz und die Seele all jener, die nicht nur sich selbst in die Luft jagen wollen. Damit man seine Fähigkeiten im Umgang mit Sprengmitteln verbessern kann, hat man die Möglichkeit sich an einem der zwei Schilder einzelne Minen, Sprengsätze oder Fahrzeuge zu Spawnen. Außerdem bietet der Pionierplatz die Möglichkeit ein Minenfeld zu spawnen, was den Umgang noch weiter Schulen soll. Das Legen eigener Sprengmittel ist ebenfalls möglich. Von der Tribüne aus kann man das ganze ohne verletzt zu werden, gut beobachten.
<br />
<br />
<t underline='true'><t size='1.1'>CQB-Gelände</t></t><br />
Der Ort, an dem schnelle Reakionen gefördert werden, ist das CQB- Gelände. Hier gibt es zwei fertige Kurse, die wahlweise mit Zielscheiben oder mit echten Gegner durchlaufen werden können. Dazu einfach an den Startpunkt des Kurses gehen und per ACE-Fremdinteraktionsmenü einen der Parcourarten auswählen.
<br />
<br />
<t underline='true'><t size='1.1'>Mörserplatz</t></t><br />
Der Mörserplatz bietet dank SpecOp0, die Möglichkeit Ziele zu Spawnen. Diese können dann per Mörser beschossen werden. Eine Besonderheit des Mörserplatzes ist, die Möglichkeit dir einen kompletten Feuerbefehl durchgeben zulassen. Das ganze funktioniert per ACE-Menü.
<br />
<br />
<t underline='true'><t size='1.1'>Luftfahrtgelände</t></t><br />
Am Luftfahrtgelände befindet sich ein Fahrzeugspawner der dir ermöglicht, sämtliche Luftfahrzeuge und Drohnen, die es im Repo gibt, zu Spawnen. Des Weiteren hast du die Möglichkeit über das Schild des Fahrzeugspawners eine Fallschirmübung zu starten, um so denn System-,HALO- oder HAHO-Sprung alleine oder in der Gruppe zu Üben.
<br />
<br />
<t underline='true'><t size='1.1'>Tribüne</t></t><br />
Ein auf denn ersten Blick einfacher und recht unspektakulärer Ort, vor allem wenn man dort alleine unterwegs ist. Dieser Ort ist für Trainings in Gruppen gedacht. Man kann von Oben wunderbar Bewegungen anderer Teams anschauen und analysieren. Durch denn audiovisuellen Lerntyp dieses Ortes wird die Lernkurve merklich gesteigert.
<br />
<br />
<br />
<br />
<t underline='true'><t size='1.25'>Schlusswort</t></t><br />
Das wäre es so weit von mir, mit diesem Tutorial. Ich hoffe, es konnte dir einen kleinen Einblick geben in dem, was du hier tun kannst. Sollten dennoch fragen offen sein, wende dich einfach an einem Stammspieler deiner Wahl.<br />
Wenn dir beim Spielen, Testen oder Üben irgendwelche Fehler auffallen, dann melde diese Bitte an Reimchen oder einen Stammspieler deines Vertrauens. Danke das du bis hier gelesen hast und nun Wünsche ich dir viel Spaß beim Erkunden der Mission und im TTT ;)
<br />
Mit kameradschaftlichen Gruß<br />
<t size='1.25'>Reimchen</t><br />
";
