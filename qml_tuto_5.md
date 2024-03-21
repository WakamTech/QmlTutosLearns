# Tutoriel QML : Comprendre les Layouts - Column, Row, et Grid

## Introduction

Dans QML, les layouts sont des composants qui organisent les éléments enfants de manière structurée et réactive. Nous allons explorer trois types de layouts : `Column`, `Row`, et `Grid`.

## 1. Column Layout

`Column` arrange ses éléments enfants verticalement.

### Exemple :

![Mon Projet](./img/column_.png)


```qml
import QtQuick
import QtQuick.Controls
import QtQuick.Window
import QtQuick.Effects

ApplicationWindow {
    width: 319
    height: 690
    visible: true
    title: qsTr("Hello World")

    color: "#ffddff"
    Column {
        spacing: 10 // Espace entre les éléments
        anchors.centerIn: parent
        Rectangle {
            width: 100; height: 50; color: "red"
        }
        Rectangle {
            width: 100; height: 50; color: "green"
        }
        Rectangle {
            width: 100; height: 50; color: "blue"
        }
    }

}

```

### Explication :

- `Column` aligne tous les `Rectangle` l'un sous l'autre.
- `spacing` définit l'espace entre chaque élément.

## 2. Row Layout

`Row` arrange ses éléments enfants horizontalement.

### Exemple :

![Mon Projet](./img/row_.png)


```qml
Row {
    spacing: 10 // Espace entre les éléments
    anchors.centerIn: parent


    Rectangle { width: 50; height: 100; color: "red" }
    Rectangle { width: 50; height: 100; color: "green" }
    Rectangle { width: 50; height: 100; color: "blue" }
}
```

### Explication :

- `Row` aligne tous les `Rectangle` côte à côte.
- `spacing` sert également à espacer les éléments.

## 3. Grid Layout

`Grid` arrange ses éléments enfants en grille.

### Exemple :

![Mon Projet](./img/grid.png)

```qml
    Grid {
        rows: 2
        columns: 2
        spacing: 10
        
        anchors.centerIn: parent

        Rectangle { width: 100; height: 100; color: "red" }
        Rectangle { width: 100; height: 100; color: "green" }
        Rectangle { width: 100; height: 100; color: "blue" }
        Rectangle { width: 100; height: 100; color: "yellow" }
    }
```

### Explication :

- `Grid` organise les éléments dans un motif de grille avec un nombre spécifié de `rows` (lignes) et `columns` (colonnes).
- Les rectangles se placent dans la grille de gauche à droite, puis de haut en bas.

## Propriétés Communes

Ces layouts partagent certaines propriétés importantes :

- `spacing`: Définit l'espace entre les éléments enfants.
- `anchors`: Utilisé pour ancrer le layout dans son parent ou par rapport à d'autres éléments.

## Flexibilité et Réactivité

Les layouts en QML sont flexibles et réactifs. Ils s'adaptent aux modifications des tailles et des positions de leurs éléments enfants. Cette adaptabilité les rend idéaux pour créer des interfaces utilisateur dynamiques qui fonctionnent sur une variété de dispositifs et d'orientations d'écran.

## Utilisation Pratique

Utilisez `Column` pour un alignement vertical, `Row` pour un alignement horizontal, et `Grid` pour un arrangement en grille. Choisir le bon layout dépend de l'interface utilisateur que vous souhaitez créer. 

## Conclusion

Les layouts en QML, tels que `Column`, `Row`, et `Grid`, sont des outils essentiels pour organiser les éléments de l'interface utilisateur de manière structurée et réactive. Ils simplifient le processus de création de mises en page qui s'adaptent automatiquement aux changements de taille et de disposition des éléments. En pratiquant avec ces layouts, vous pouvez développer des compétences solides en design d'interface utilisateur avec QML.

# Et si on s'amusait un peu

Nous allons utiliser Grid pour placer ces images la ainsi dans la fenetre

![Image Future Page Accueil](./img/img_tuto5/Accueil.png)

## Cliquez Ici pour Avoir les quatres images utilisées : 

<a href=./img/img_tuto5/MTN.png>Image MTN</a>

<a href=./img/img_tuto5/MOOV.png>Image Moov</a>

<a href=./img/img_tuto5/Celtis.png>Image Celtis</a>

<a href=./img/img_tuto5/Logo.png>Image Logo</a>

<a href=./img/img_tuto5/uploadImage.mkv>Image Logo</a>

### Exemple :

[![Ajouter Image en Qt](./img/img_tuto5/uploadImage.gif)](https://youtu.be/sooHEAz8hPg)

> Toujours Placer chaque image dans un rectangle, l_image doit toujour remplire le rectange. Ainsi la vie sera plus simple pour appliquer les ombrages et les contours pour les images

```qml
       Grid {
        id: grid
        rows: 2
        columns: 2

        anchors.centerIn: parent
        width: parent.width * 0.8
        height: width

        spacing: 8

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageMTN
                    source: "qrc:/Images/MTN.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageMTN.width
                            height: imageMTN.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageMOOV
                    source: "qrc:/Images/MOOV.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageMOOV.width
                            height: imageMOOV.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageCeltis
                    source: "qrc:/Images/Celtis.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageCeltis.width
                            height: imageCeltis.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

        Item {
            width: (grid.width - 8) / 2; height: width

            Rectangle {
                anchors.fill: parent

                Image {
                    id: imageLogo
                    source: "qrc:/Images/logo.png"

                    anchors.fill: parent
                    asynchronous: true
                    fillMode: Image.PreserveAspectCrop

                    layer.enabled: true
                    layer.effect: OpacityMask{
                        maskSource: Item{
                            width: imageLogo.width
                            height: imageLogo.height
                            Rectangle{
                                anchors.fill: parent
                                radius: 24
                            }
                        }
                    }
                }
            }
        }

    }


```