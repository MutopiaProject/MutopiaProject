%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  *                                                                     *
  * Notes for Mov3                                                      *
  *                                                                     *
  * Do Not Compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "../common/version.ily"

global = {
  \key a \major
  \time 3/8
}

violinI  = \include "mov3-violin1.ily"
violinII = \include "mov3-violin2.ily"
viola    = \include "mov3-viola.ily"
continuo = \include "mov3-continuo.ily"
\include "mov3-keyboard.ily"
