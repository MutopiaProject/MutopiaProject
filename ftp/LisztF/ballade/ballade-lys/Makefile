# $Id: Makefile,v 1.2 2003/06/05 18:13:21 cve Exp $
all: ballade.ps
ballade.dvi: ballade.ly ballade_p1.ly ballade_p2.ly ballade_p3.ly \
	ballade_p4.ly  ballade_p5.ly ballade_p6.ly ballade_p7.ly  \
	ballade_p8.ly ballade_p9.ly ballade_p10.ly ballade_p11.ly \
	ballade_p12.ly ballade_p13.ly ballade_p14.ly
	ly2dvi ballade.ly

ballade.ps: ballade.dvi
	dvips ballade.dvi -o ballade.ps
