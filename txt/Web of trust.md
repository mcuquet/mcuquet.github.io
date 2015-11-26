---
layout: page
title: Web of trust
tags:
- Informació quàntica
- Xarxes complexes
- Recerca
permalink: /txt/Web of trust/
collection: txt
category: Ciència i divulgació
created: 15 des 2010
status: esborrany
---

Durant el doctorat vaig estudiar com es transmet la informació en
una xarxa on el soroll entre nodes de la xarxa limita el número màxim de
"salts" que es poden fer sense que la informació es degradi excessivament. I
com a exemple d'una xarxa real, vaig treballar amb la **Xarxa de Confiança** (_Web of
Trust_) del protocol OpenPGP.

Sense entrar en gaires detalls, l'**OpenPGP** és un protocol estàndard
d'encriptació que s'utilitza per assegurar les communicacions a través d'email
utilitzant criptografia de clau pública. Així, si l'Alice vol enviar un
missatge segur a en Bob, ha d'utilitzar la clau pública d'en Bob per a
encriptar-lo. L'objectiu de la Xarxa de Confiança, en aquest protocol, és
resoldre el problema d'autentificació que es produeix quan l'Alice no pot
verificar si la clau que està fent servir és realment propietat d'en Bob.
Aquesta xarxa social, doncs, representa la confiança entre usuaris d'OpenPGP
—confiança pel que fa a que una determinada clau correspon efectivament a una
adreça de correu concreta, però no necessàriament en el que aquesta adreça
digui.

Al final d'aquesta pàgina podeu trobar l'arxiu amb el graf, per
a que qui vulgui el pugui utilitzar. La informació de la Xarxa de Confiança ja
és pública de per si. El que penjo jo és una xarxa una mica "processada" i en
un format de graf estàndard: el format GML.

## Xarxa de Confiança del protocol OpenPGP

A partir de la pàgina del
[Wotsap](http://www.lysator.liu.se/~jc/wotsap/), he agafat el component
fortament connectat (strongly connected component) de la Xarxa de Confiança
completa del servidor de claus suís del 25 de maig de 2010, que conté 41.459
claus (nodes del graf) i 424.577 firmes (arestes). A partir d'aquesta xarxa,
considero el graf format únicament per les arestes bidireccionals (és a dir,
les que corresponen a dos usuaris que s'han signat les claus mútuament). Això
deixa un graf no dirigit amb 38.550 claus i 145.388 firmes bidireccionals.

La xarxa està en [format
GML](http://www.infosun.fim.uni-passau.de/Graphlet/GML/gml-tr.html) i comprimit
amb el gzip.  Espero que sigui útil (o si més no interessant!). Si el feu
servir, podeu citar Martí Cuquet and John Calsamiglia, "Limited-path-length
entanglement percolation in quantum complex networks", _Physical Review A_ **83**,
032319 (2011). 

## Documents

* [OpenPGP Web of Trust]({{site.assetsurl}}wot20100525.gml.gz)

## Vegeu també

* [Recerca]({{site.baseurl}}/Research)
