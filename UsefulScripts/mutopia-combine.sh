#!/bin/bash

if [ ! -n "$1" ] ; then
    echo "Usage: $0 <base name>"
    exit 1
fi

if [ `ls *-a4.pdf | wc -l` -gt 1 ] ; then
    gunzip *-a4.ps.gz
    gunzip *-let.ps.gz
    zip "$1"-a4-pdfs.zip *-a4.pdf
    zip "$1"-a4-pss.zip *-a4.ps
    zip "$1"-let-pdfs.zip *-let.pdf
    zip "$1"-let-pss.zip *-let.ps
    rm *-a4.pdf *-a4.ps *-let.pdf *-let.ps
fi

if [ `ls *.ly *.lyi *.ily | wc -l` -gt 1 ] ; then
    zip "$1"-lys.zip *.ly *.lyi *.ily
    rm *.ly *.lyi *.ily
fi

if [ `ls *.mid | wc -l` -gt 1 ] ; then
    zip "$1"-mids.zip *.mid
    rm *.mid
fi

