%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  *                                                                     *
  * Notes for Mov1                                                      *
  *                                                                     *
  * Do Not Compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "../common/version.ily"

global = {
  \key a \major
  \time 2/2
}

violinI   = \include "mov1-violin1.ily"
violinII  = \include "mov1-violin2.ily"
viola     = \include "mov1-viola.ily"
continuo  = \include "mov1-continuo.ily"
\include "mov1-keyboard.ily"

