%{
  ***********************************************************************
  * BachJS - Violin Concerto No.1 in A minor                            *
  * typeset by Federico Bruni and Javier Ruiz-Alma                      *
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
  \key a \minor
  \numericTimeSignature
  \time 2/4
}

soloviolin   = \include "mov1-violin-solo.ily"
%{
violinI   = \include "mov1-violin1.ily"
violinII  = \include "mov1-violin2.ily"
viola     = \include "mov1-viola.ily"
continuo  = \include "mov1-continuo.ily"
%}

