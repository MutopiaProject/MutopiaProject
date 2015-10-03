%{
  ***********************************************************************
  * Composer - Work in Tonality                                         *
  * typeset by                                                          *
  *                                                                     *
  *                                                                     *
  * Notes for Mov2                                                      *
  *                                                                     *
  * Do Not Compile                                                      *
  *                                                                     *
  ***********************************************************************
%}

\include "../common/version.ily"

global = {
  \key a \major
  \time 12/8
}

violinI   = \include "mov2-violin1.ily"
violinII  = \include "mov2-violin2.ily"
viola     = \include "mov2-viola.ily"
continuo  = \include "mov2-continuo.ily"
\include "mov2-keyboard.ily"
