---
layout: page
title: "Wikileaks i the Guardian: publicar una contrasenya sempre és una mala idea"
abstract: "La setmana passada Wikileaks [va anunciar](http://www.elpais.com/articulo/internacional/Wikileaks/anuncia/publicacion/todos/cables/diplomaticos/proteger/fuentes/elpepuint/20110902elpepuint_3/Tes) que publicaria tots els cables dimplomàtics de les ambaixades dels Estats Units (el conegut com a cas cablegate) sense editar; és a dir, sense cap alteració que amagués, per exemple, els noms dels informadors. La raó per fer-ho és que la contrasenya que protegia l'arxiu encriptat amb tota la informació havia estat publicada obertament per l'editor executiu d'investigacions del diari anglès the Guardian, David Leigh, en el seu llibre sobre Wikileaks, i que per tant ja no tenia sentit seguir protegint la informació. Tanmateix, ara els principals diaris que van començar publicant el cas cablegate ---inclòs El País--- [han emès un comunicat](http://www.elpais.com/articulo/internacional/Wikileaks/anuncia/publicacion/todos/cables/diplomaticos/proteger/fuentes/elpepuint/20110902elpepuint_3/Tes) condemnant la decisió de Wikileaks (perquè desprotegeix les fonts) però no l'error de David Leigh i the Guardian."
tags:
- Wikileaks
permalink: /txt/Contrasenyes/
collection: txt
category: Altres
created: 2 set 2011
status: esborrany
---

![Wikileaks]({{site.imagesurl}}wikileaks.png)  
Fa 9 mesos [WikiLeaks estava en boca de tots][1]. El 28 de novembre del 2010
cinc diaris (*El País*, *Le Monde*, *Der Spiegel*, *The Guardian* i *The New
York Times*) [començaven a publicar][2] els cables enviats entre el Departament
d'Estat dels Estats Units i les seves ambaixades arreu del món: el que poc
després s'anomenaria [cablegate][3]. WikiLeaks els publicava a través d'aquests
diaris per aconseguir un major impacte de la informació i també perquè la
quantitat de material a tractar era tal que se li feia impossible la tasca per
si sola: calia editar les referències i noms d'informadors.

[1]: <http://cuquet.wordpress.com/2010/12/07/apunts-sobre-wikileaks/>

[2]: <http://www.elpais.com/documentossecretos/>

[3]: <http://wikileaks.org/cablegate.html>

Ara resulta que [la totalitat dels cables diplomàtics americans està disponible
a la xarxa][4] en un arxiu encriptat, i que la clau per desencriptar-lo ha estat
publicada en un llibre (notícia a [The Guardian][5] i a [WikiLeaks][6]). Tot
plegat, per un cúmul d'errors i mala pràctica de diversa gent. Una bona
explicació de tota la història surt publicada a [Der Spiegel][7], i la clau per
desencriptar l'arxiu [al blog de Bruce Schneier][8] (a més d'al llibre "Inside
Julian Assange's War on Secrecy", del periodista de [The Guardian][9] [David
Leigh][10]). Resumint, la història és la següent:

[4]: <https://www.schneier.com/blog/archives/2011/09/unredacted_us_d.html>

[5]: <http://www.guardian.co.uk/world/2011/sep/01/unredacted-us-embassy-cables-online>

[6]: <http://www.wikileaks.org/Guardian-journalist-negligently.html>

[7]: <http://www.spiegel.de/international/world/0,1518,783778,00.html>

[8]: <https://www.schneier.com/blog/archives/2011/09/unredacted_us_d.html>

[9]: <http://www.guardian.co.uk/profile/davidleigh>

[10]: <http://en.wikipedia.org/wiki/David_Leigh>

1.  David Leigh (de *The Guardian*) i [Julian Assange][11] (WikiLeaks) es
    reuneixen, i acorden que Assange donarà a Leigh una còpia encriptada d'un
    arxiu amb tots els cables.

    [11]: <http://ca.wikipedia.org/wiki/Julian_Assange>

2.  L'arxiu es penja temporalment a una URL amagada, i Assange dóna la
    contrasenya per desencriptar-lo a Leigh.

3.  Leigh descarrega l'arxiu, que després és esborrat de l'adreça.

4.  [Daniel Domscheit-Berg][12] i Julian Assange es piquen, i el primer abandona
    WikiLeaks amb una còpia de gran part de la seva informació (que inclou,
    aparentment sense el coneixement de Domscheit-Berg, l'arxiu encriptat amb
    els cables). Domscheit-Berg funda [OpenLeaks][13].

    [12]: <http://ca.wikipedia.org/wiki/Daniel_Domscheit-Berg>

    [13]: <https://openleaks.org/>

5.  Després dels atacs [DDoS][14] i de perdre el suport de companyies com
    Amazon, PayPal i Mastercard, es creen *mirrors* i també es posa la
    informació a BitTorrent. Aparentment, tant els primers *mirrors* com la
    informació a BitTorrent inclouen l'arxiu encriptat amb els cables.

    [14]: <http://ca.wikipedia.org/wiki/Denegaci%C3%B3_de_servei>

6.  El [Caos Computer Club][15] expulsa Daniel Domscheit-Berg.

    [15]: <http://www.spiegel.de/international/germany/0,1518,780289,00.html>

7.  Algú revela a *Der Freitag* que la contrasenya està a un llibre de Leigh. El
    diari no ho publica directament, però quasi, i a la gent li costa poc sumar
    2 i 2 s'acaba descobrint.

Ara WikiLeaks acusa *The Guardian* i David Leigh de què els cables siguin ara
totalment accessibles, i ells ho neguen i s'hi tornen. En fi, us recomano que us
llegiu la [història completa a Der Spiegel][16] (en anglès). També us recomano
que a partir d'ara tracteu la informació de *The Guardian* sobre el tema amb
desconfiança: estan a la defensiva i no paren de dir barbaritats.

[16]: <http://www.spiegel.de/international/world/0,1518,783778,00.html>

Tot plegat fa pensar unes quantes coses. Primer, que els periodistes haurien de
tenir una mica de formació en criptografia. Com pot ser algú capaç de publicar
en un llibre la clau d'un arxiu encriptat? Segons [The Guardian][17],

[17]: <http://www.guardian.co.uk/world/2011/sep/01/unredacted-us-embassy-cables-online>

>   No té sentit suggerir que el llibre sobre WikiLeaks de *The Guardian* ha
>   compromès la seguretat en cap manera.
>
>   El nostre llibre sobre WikiLeaks es va publicar el febrer passat. Contenia
>   una contrasenya, però no detalls de la localització dels arxius, i ens
>   havien dit que era una contrasenya temporal que expiraria i seria esborrada
>   en qüestió d'hores.

Evidentment, les contrasenyes no són temporals. En tot cas ho són els arxius, i
**sempre és una mala idea publicar una contrasenya** (no saps mai qui pot haver
fet una còpia de l'arxiu). Com diu [un dels comentaris][18] a l'article de Bruce
Schneier:

[18]: <http://www.schneier.com/blog/archives/2011/09/unredacted_us_d.html#c580855>

>   Això em fa recordar una cita de Dilbert:
>
>   L'estupidesa és com el combustible nuclear: es pot fer servir pel bé o pel
>   mal. Però en qualsevol cas, no vols estar-hi gaire a prop.
>
>   En aquest cas, l'estupidesa a *The Guardian* ha arribat a la massa crítica.

I encara [un altre comentari][19]:

[19]: <http://www.schneier.com/blog/archives/2011/09/unredacted_us_d.html#c580863>

>   Una suggerència per als autors de nous llibres:
>
>   "Aquesta història està basada en fets reals. Només els noms I LES
>   CONTRASENYES s'han alterat per a protegir els innocents"
