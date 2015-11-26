---
layout: page
title: Grafs
created: 18 abr 2009
---

Amb aquest article vull començar una sèrie sobre algunes coses que he anat
aprenent últimament sobre teoria de grafs i xarxes complexes. Intentaré
esciure una mica de tot, però estic obert a suggerències.

Fa ja un temps que l’estudi de les xarxes està de moda, sobretot en el context
d’Internet i la World Wide Web, però també en sistemes biològics i mèdics i en
xarxes socials. De totes maneres, és un camp relativament antic estudiat dins
la matemàtica discreta per la teoria de grafs.

Les arrels d’aquest camp les trobem al 1736, quan el matemàtic suís Leonhard
Euler va publicar la solució del problema dels ponts de Königsberg. Aquesta
ciutat estava creuada per un riu, que formava dues grans illes connectades
entre elles i amb la resta de la ciutat a través de set ponts, com es veu a la
imatge. El problema consistia en trobar una ruta que passés per cada pont
exactament una sola vegada, ni més ni menys. Per solucionar-lo, Euler el va
reformular de manera abstracta: l’única informació necessària era la llista
d’àrees de terra (els punts vermells, a la imatge) i els ponts que les
connectaven (les línies negres). D’aquesta manera apareixia l’objecte
matemàtic que actualment es coneix com a graf. En el llenguatge actual, a cada
massa de terra l’anomenem vèrtex (o punt, o node), i a cada pont aresta (o
línia, o enllaç). Així, un graf G consisteix en dos conjunts V i E tals que V
no és buit i E és un conjunt de parelles desordenades d’elements de V. Els
elements de V són els vèrtexs del graf G, i els de E en són les arestes.

El raonament d’Euler va ser el següent: excepte a l’inici i al final del
recorregut, cada vegada que s’arriba a un vèrtex a través d’una aresta se n’ha
de marxar a través d’una altra. Per tant, el número d’arestes que toquen un
vèrtex ha de ser sempre parell, amb la possible excepció de dos vèrtex (la
sortida i l’arribada). Aquest número s’anomena el grau del vèrtex. Ara bé, com
es pot veure a la imatge, tots els vèrtex són senars, i per tant no pot
existir cap ruta que passi per cada pont exactament una sola vegada.
