\version "2.18.2"

% -- "Glory to God in the Highest" by G. B. Pergolesi.
% -- typeset by Robinson Tryon (robinson.tryon@alum.dartmouth.org), August 2004
%
% Source: from a 1904 Schirmer edition
% License: Creative Commons Attribution-ShareAlike

\paper {
  top-margin = .75 \in
  bottom-margin = .75 \in
  left-margin = 1 \in 
  right-margin = 1 \in
}

% - be able to change the font size of the document
#(set-global-staff-size 12)

\header {
 mutopiatitle = "Glory to God in the highest"
 mutopiacomposer = "PergolesiGB"
 mutopiainstrument = "Voice (SATB) and Organ"
 date = "1700s"
 source = "G Shirmer, Inc., 1904"
 style = "Classical"
 license = "Creative Commons Attribution-ShareAlike 4.0"
 maintainer = "Robinson Tryon"
 maintainerEmail = "robinson.tryon@alum.dartmouth.org"

 title = "Glory to God in the highest."
 subtitle = \markup { \center-column { 
   \line { The Angel's Song } 
   \line { (from the Gospel of St. Luke, chap. ii., v.14,) } } }
 subsubtitle = \markup { \center-column { 
   \line { for Christmas. } 
   \line { For Four-Part Chorus and Quartet of Mixed Voices } 
   \line { Organ-part by Vincent Novello. } } }
 composer = "G. B. Pergolesi"

% arranger = \markup { \italic {Will Mcfarlane. }}
% not really a poet, but using it to left-justify the editor
 poet = \markup { \italic { \column { 
     \line { Edited by } 
     \line { Will C. Macfarlane } } } }
 mutopiapoet = "Will C. Macfarlane"

 texidoc = "Glory to God in the highest (Pergolesi)"
 footer = "Mutopia-2015/01/17-477"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2015 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


% -- use global information to designate common stuff (key, time, etc..)
global =  {
    \key g \major
    \time 4/4
}

% ------ GENERAL MARKUP ITEMS ------
markSoli = \markup { \sans \larger \bold { Soli. }}
markChorus = \markup { \bold \sans \larger { Chorus. }}

markChorusF = \markup { \column { \bold \sans \larger { Chorus. } \dynamic { f } } }
markChorusP = \markup { \column { \bold \sans \larger { Chorus. } \dynamic { p } } }
markSoliP = \markup { \column { \bold \sans \larger { Soli. } \dynamic { p } } }

markPed = \markup { Ped. }
% markPed = \sustainOn

markMan = \markup { Man. }
markPSW = \markup { \dynamic { p } Sw. }
markFGT = \markup { \dynamic { f } Gt. }

editBreak = \break
editNewPage = \pageBreak

noDynamic = \once \omit DynamicText

% ---- END MARKUP ITEMS ------------


% soprano centers around a c above middle c
sopMusic =   \relative c'' {

%- 1 -
    b8^\markup { \column { \larger{ Allegro.} \larger \sans \bold { "    Soli." } } }
      b4 c16(a) d8 d4 e16(c) 
    b8 b4 c16(a) d8 d4 e16(c)
    \stemUp { b8\noBeam c16(a) b8\noBeam c16(a) b8\noBeam c16(a) b8\noBeam c16(a) }
    b8.(a16) g4 \stemDown d'8^\markChorus d4 e8

%- 5 -
    fis8 fis4 g16(e) d8 d4 e8
    fis8 fis4 g16(e) d8\noBeam e\noBeam d\noBeam e\noBeam
    d8\noBeam e\noBeam d\noBeam e\noBeam fis8.(e16) d4
    b8 b4 c16(a) d8 d4 e16(c)
    b8 b4 c16(a) d8 d4 e16(c)
    \stemNeutral

%- 10 -
    b8\noBeam c16(a) b8\noBeam c16(a) b8\noBeam c16(a) b8\noBeam c16(a)
    g4 g \stemDown d'^\markSoli ( ~ d16 e c d
    b16 d c e) d8 r8 d4( ~ d16 e c d
    b16 d c e) d8  r8 g16( f e d) g( f e d)
    e8^\markChorusF\noBeam f16(d) e8\noBeam f16(d) e8.(c16) c4
    
%- 15 -
    e4^\markSoli ( ~ e16 fis! d e cis e d fis) e8 r8
    e4( ~ e16 fis d e cis e d fis) e8 r8
    a16( g fis e) a( g fis e) fis8^\markChorus\noBeam g16(e) fis8\noBeam g16(e)
    fis8\noBeam d\noBeam r4 b8 b4 c!16(a)
    d8 d4 e16(c) b8 b4 c16(a)

%- 20 -
    d8 d4 e16(c) b8\noBeam c16(a) b8\noBeam c16(a)
    b8\noBeam c16(a) b8\noBeam c16(a) b4(c8) c\noBeam
\stemNeutral

    b4(a) g r4
    r1
    r1

%- 25 -
\stemDown
    d'8^\markChorus\noBeam d\noBeam d\noBeam d\noBeam d4(e8) e\noBeam
    d2 b4 r4
\stemNeutral
    r1
    r1
    r1

%- 30 -
    r2^\fermata r2
    r1
    r1
    r2 g2^\markChorusP ~
    g2 g ~

%- 35 -
    g2 ~ g4. g8
    g4 r4 g2 ~
    g2 g4 r4
    r2 a2 ~
    a2 a4 r4

%- 40 -
\stemDown
    r2 b2(
\stemNeutral
    a2) g
    fis2 g
\stemDown
    r2^\fermata c8^\ff c4 d8
    e8 e4 f16(d) c8 c4 d8

%- 45 -
    e8 e4 f16(d) e8\noBeam f16(d) e8\noBeam f16(d)
    e8\noBeam f16(d) e8\noBeam f16(d) e8.(c16) c4
\stemNeutral
    r2 a2^\p ~
    a2 b2( ~
    b2 a4.) a8

%- 50 -
    a4 r4 a4^\markSoliP
       ( ~ a16 b g a
    fis16 a g b) a8 r8 a4( ~ a16 b g a
    fis16 a g b) a8 r8 \stemDown d16( c b a) d( c b a)
    d16( c b a) d( c b a) b8^\markChorus
      b4 c16(a)
    d8 d4 e16(c) b8 b4 c16(a)

%- 55 -
    d8 d4 e16(c) b8\noBeam c16(a) b8\noBeam c16(a)
    b8\noBeam c16(a) b8\noBeam c16(a) b4 e4
    d2 b4 r4
\stemNeutral
    r2^\fermata g2^\p
    r4 g4 g4(e)

%- 60 -
    r2 a2
    r4 a4 a2
\stemDown
    r2 b2 ~
    b2 b2 ~
    b2 \stemNeutral a2 ~

%- 65 -
    a2 a2(
    b2) a2 ~
    a2 b4 r4
    r2^\fermata a4^\p r4
    r2^\fermata g2^\fermata^\pp
    
    \bar "|."
}

sopWords = \lyricmode {

%- 1 -
    Glo -- ry to __ God in the high -- est,
    to __ God in the __ high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 4.5 -

% -- chorus
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 11.5 -
% - Soli

    Glo -- ry, glo -- ry,
    glo -- ry, __

% - Chorus
    glo -- ry in the high -- est,

% - 15 -
% - Soli
    Glo -- ry, glo -- ry,
    glo -- ry, __

% - Chorus
    glo -- ry __ in the high -- est,
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    glo -- ry, glo -- ry in the high -- est,
    Glo -- ry,

% - 23 - 
% -- Alto/tenor solo (no words -- will the program auto-figure it out?)

% - Chorus
    Glo -- ry, glo -- ry in the high -- est.

% -- other stuff here....

% - 33 -
% -- back to chorus
    Peace, Peace on earth,
    Good -- will, good -- will,
    good -- will toward men!

% - 43 -
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 47 -
    Peace, Peace on earth.

    Glo -- ry, glo -- ry, glo - - ry,

% - 53 -
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est;
    Glo -- ry.

% - 58 -
    Peace on earth,
    Peace on earth,

    Good -- will, good -- will toward men!

% - 68 -
    Peace! Peace!

}

altoMusic =   \relative c'' {

%- 1 -
\stemUp
    g8^\markSoli
      g4 a16(fis) b8 b4 c16(a)
    g8 g4 a16(fis) b8 b4 c16(a)
    g8\noBeam a16(fis) g8\noBeam a16(fis) g8\noBeam a16(fis) g8\noBeam a16(fis)
    g4 g fis8^\markChorus fis4 g8

%- 5 -
    a8 a4 b16(g) fis8 fis4 g8
    a8 a4 b16(g) fis8\noBeam g16(e) fis8\noBeam g16(e)
    fis8\noBeam g16(e) fis8\noBeam g16(e) d8.(e16) fis4
    g8 g4 fis8 g g4 fis8
    g8 g4 fis8 g g4 fis8

%- 10 -
    g8\noBeam fis\noBeam g\noBeam fis\noBeam g\noBeam fis\noBeam g\noBeam fis\noBeam
    g4 g b4^\markSoli ( ~ b16 c a b
    g16 b a c) b8 r8 \stemUp b4( ~ b16 c a b
    g16 b a c) b8 r8 e16( d c b) e( d c b)
    c8^\markChorusF\noBeam d16(b) c8\noBeam d16(b) \stemNeutral c8.(g16) g4
    
%- 15 -
\stemDown
    cis4^\markSoli ( ~ cis16 d b cis a cis b d) cis8 r8
    cis4( ~ cis16 d b cis a cis b d) cis8 r8
    fis16( e d cis) fis( e d cis) d8^\markChorus\noBeam e16(cis) d8\noBeam e16(cis)
    d8 \stemNeutral a\noBeam r4 g8 g4 fis8
    g8 g4 fis8 g g4 fis8

%- 20 -
    g8 g4 fis8\noBeam g\noBeam fis\noBeam g\noBeam fis\noBeam
    g8\noBeam fis\noBeam g\noBeam fis\noBeam g4. g8
    g4( fis) g r4
\stemDown
    b8^\markSoli b4 c16(a) d8 d4 e16(c)
    b8 b4 c16(a) d8 d4 e16(c)

%- 25 -
    b8^\markChorus\noBeam c16(a) b8\noBeam c16(a) b4(c8) c8\noBeam
\stemNeutral
    a2 b4 r4
    r1
    r1
    r1

%- 30 -
    r2^\fermata r2
    r1
    r1
    r2 d,2^\markChorusP ~
    d2 e2( ~

%- 35 -
    e2 d4.) d8
    d4 r4 d2 ~
    d2 e4 r4
    r2 e2 ~
    e2 fis4 r4

%- 40 -
    r2 g2(
    e2) d2
    d2 d
    r2^\fermata e8^\ff e4 f8
    g8 g4 a16(f) e8 e4 f16(d)
    
%- 45 -
    g8 g4 a16(f) g8\noBeam g\noBeam g\noBeam g\noBeam
    g8\noBeam g\noBeam g\noBeam g\noBeam g4 g
    r2 fis!2^\p ~
    fis2 g2( ~
    g2 fis4.) fis8

%- 50 -
    fis4 r4 fis4^\markSoliP (~ fis16 g e fis
    d16 fis e g) fis8 r8 fis4( ~ fis16 g e fis
    d16 fis e g) fis8 r8 b16( a g fis) b( a g fis)
    b16( a g fis) b( a g fis) g8^\markChorus g4 a16(fis)
\stemUp
    b8 b4 c16(a) g8 g4 a16(fis)

%- 55 -
    b8 b4 c16(a) g8\noBeam fis\noBeam g\noBeam fis\noBeam
    g8\noBeam a\noBeam g\noBeam a\noBeam g4 g
    b4.( a8) g4 r4
    r2^\fermata g2^\p
    r4 f4 e2

%- 60 -
    r2 a2
    r4 g4 fis!2
    r2 g2 ~
    g2 gis ~
    gis a2(

%- 65 -
    g!2) fis(
    g2) g(
    fis2) g4 r4
    r2^\fermata fis4^\p r4
    r2^\fermata d2^\fermata^\pp
\stemNeutral
}

altoWords = \lyricmode { 

%- 1 -
    Glo -- ry to __ God in the high -- est,
    to __ God in the __ high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 4.5 -

% -- chorus
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 11.5 -
% - Soli

    Glo -- ry, glo -- ry,
    glo -- ry, __

% - Chorus
    glo -- ry in the high -- est,

% - 15 -
% - Soli
    Glo -- ry, glo -- ry,
    glo -- ry, __

% - Chorus
    glo -- ry __ in the __ high -- est,
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    glo -- ry, glo -- ry in the high -- est,
    Glo -- ry,

% - 23 - 
% -- Alto/tenor solo 
    Glo -- ry to __ God in the high -- est,
    to God in the 

% - Chorus
    high -- est, glo -- ry in __ the high -- est.

% -- other stuff here....

% - 33 -
% -- back to chorus
    Peace, Peace on earth,
    Good -- will, good -- will,
    good -- will toward men!

% - 43 -
    Glo -- ry to God in the high -- est,
    to God in the __ high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 47 -
    Peace, Peace on earth.

    Glo -- ry, glo -- ry, glo - - ry,

% - 53 -
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est;
    Glo -- ry.

% - 58 -
    Peace on earth,
    Peace on earth,

    Good -- will, good -- will toward men!

% - 68 -
    Peace! Peace!

}


tenorMusic =  \relative c'' { 

\stemDown
%- 1 -
    r1
    r1
    r1
    r2 d8^\markChorus d4 cis8

%- 5 -
    d8 d4 cis8 d d4 cis8
    d8 d4 cis8\noBeam d\noBeam cis\noBeam d\noBeam cis\noBeam
    d8\noBeam cis\noBeam d\noBeam cis\noBeam d4 d

\stemUp
    g,8 g4 a8 b b4 c16(a)
    g8 g4 a8 b b4 c16(a)

%- 10 -
\stemDown
    b8\noBeam d\noBeam d\noBeam d\noBeam d\noBeam d\noBeam d\noBeam d\noBeam
    d4 d4 r2
\stemNeutral
    r1
    r1
    g,8^\markChorusF\noBeam g\noBeam g\noBeam g\noBeam g8.(e16) e4

%- 15 -
    r1
    r1
\stemDown
    r2 d'8^\markChorus\noBeam cis\noBeam d\noBeam cis\noBeam
    d8\noBeam d16\noBeam d\noBeam e8\noBeam fis\noBeam g\noBeam \stemUp g,4 a8
    b8 b4 c16(a) g8 g4 a16(fis)

%- 20 -
    b8 b4 c16(a) g8\noBeam a16(fis) g8\noBeam a16(fis)
    g8\noBeam a16(fis) g8\noBeam a16( fis) g4( \stemDown e'8) e\noBeam
    d2 b4 r4
\stemUp
    g8^\markSoli g4 a8\noBeam b\noBeam b4 c16(a)
    g8 g4 a16(fis) b8 b4 c16(a)

%- 25 -
    g8^\markChorus\noBeam a16(fis) g8\noBeam a16(fis) g4. g8
    g4(fis) g r4
\stemNeutral
    r1
    r1
    r1

%- 30 -
    r2^\fermata r2
    r1
    r1
    r2 b2^\markChorusP ~
    b2 c2 (~

%- 35 -
    c2 b4.) b8
    b4 r4 \stemUp g2 ~
    g2 g4 r4
    r2 a2 ~
    a2 a4 r4

%- 40 -
\stemDown
    r2 d2(
    c2) b2
\stemUp
    a2 b2
\stemDown
    r2^\fermata c8^\ff c4 b8
    c8 c4 b8 c c4 b8

%- 45 -
    c8 c4 b8\noBeam c\noBeam d\noBeam c\noBeam d\noBeam
    c8\noBeam d\noBeam c\noBeam d\noBeam c4 c
    r2 d2^\p ~
    d2 d2 ~
    d2 ~ d4. d8

%- 50 -
    d8\noBeam \stemUp a^\markSoli[ (b)] \stemDown cis\noBeam d2 ~
    d1 ~
    d1 ~
    d2 d8^\markChorus d4 c8
    b8 d4 c8 b d4 c8

%- 55 -
    b8 d4 c8\noBeam b\noBeam d\noBeam d\noBeam d\noBeam
    d8\noBeam d\noBeam d\noBeam d\noBeam d4 e8[(g)]
    d2 d4 r4
    r2^\fermata d2^\p
    r4 d4 e(c)

%- 60 -
    r2 e2
    r4 e4 d2
    r2 d2 ~
    d2 e2 ~
    e2 \stemUp a,2 ~

%- 65 -
    a2 \stemDown d2 ~
    d2 d2 ~
    d2 d4 r4
\stemUp
    r2^\fermata a4^\p r4
\stemDown
    r2^\fermata b2^\fermata^\pp
\stemNeutral
}

tenorWords = \lyricmode { 

% -- just sop/alto

% - 4.5 -

% -- chorus
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,
    Glo -- ry to God in the high -- est,
    to God in the __ high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 11.5 -
% - Soli (sop/alto)

% - 14 -
% - Chorus
    Glo -- ry in the high -- est,

% - 15 -
% - Soli:  sop/alt

% - 17.5
% - Chorus
    Glo -- ry be to God in the high -- est,
    Glo -- ry to God in the high -- est,
    to __ God in the __ high -- est,
    glo -- ry, __ glo -- ry __ in the high -- est,
    Glo -- ry,

% - 23 - 
% -- Alto/tenor solo 
    Glo -- ry to God in the high -- est,
    to God in the 

% - Chorus
    high -- est, glo -- ry in the high -- est.

% -- other stuff here....

% - 33 -
% -- back to chorus
    Peace, __ Peace __ on earth,
    Good -- will, good -- will,
    good -- will toward men!

% - 43 -
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est,

% - 47 -
    Peace, __ Peace __ on earth,

% - 50 -
% - Tenor solo:
    Peace on earth. __

% - 53 -
% - chorus
    Glo -- ry to God in the high -- est,
    to God in the high -- est,
    Glo -- ry, glo -- ry in the high -- est; __
    Glo -- ry.

% - 58 -
    Peace on earth, __
    Peace on earth,

    Good -- will, __ good -- will __ toward __ men!

% - 68 -
    Peace! Peace!
}

bassMusic =  \relative c {

%- 1 -
    r1
    r1
    r1
    g'8^\markChorus\noBeam a\noBeam b\noBeam cis\noBeam d2 ~

%- 5 -
    d1 ~
    d2 ~ d8[(a)] d\noBeam a\noBeam
    d8\noBeam a\noBeam d\noBeam a\noBeam d[( c! b)] a\noBeam
    g1 ~
    g1 ~

%- 10 -
    g8\noBeam d\noBeam g\noBeam d\noBeam g\noBeam d\noBeam g\noBeam d\noBeam
    g4 g r2
    r1
    r1
    c8^\markChorusF\noBeam g\noBeam c\noBeam g\noBeam c8.( c,16) c4

%- 15 -
    r1
    r1
    r2 d'8^\markChorus\noBeam a\noBeam d\noBeam a\noBeam
    d8\noBeam d,\noBeam r4 g2 ~
    g1 ~

%- 20 -
    g2 ~ g8\noBeam d\noBeam g\noBeam d\noBeam
    g8\noBeam d\noBeam g\noBeam d\noBeam g4(c,8) c8\noBeam
\stemUp
    d2 g,4 r4
\stemNeutral
    g'1^\markSoli ~
    g2 ~ g4. fis8

%- 25 -
    g8^\markChorus\noBeam d\noBeam g\noBeam d\noBeam g4(c,8) c8\noBeam
\stemUp
    d2 g,4 r4
\stemNeutral
    r1
    r1
    r1

%- 30 -
    r2^\fermata c'2^\markup { \column { \larger \sans \bold { Solo. } \dynamic { mf } } }
    c,2 b4 g'
\stemUp
    r4 b,4 a2(
    d2) g,2^\markChorusP ~
    g2 g2 ~
    
%- 35 -
    g2 ~ g4. g8
    g4 r4 b2 ~
    b2 c4 r4
    r2 cis2 ~
    cis2 d4 r4
\stemNeutral

%- 40 -
    r2 g2(
\stemUp
    c,!2) d
    d2 g,
\stemNeutral
    r2^\fermata c'2^\ff ~
    c1 ~

%- 45 -
    c2 ~ c8\noBeam g\noBeam c\noBeam g\noBeam
    c8\noBeam g\noBeam c\noBeam g\noBeam c8.( c,16) c4
    c'8\noBeam b\noBeam a[(g)] d2^\p ~
    d2 d2 ~
    d2 ~ d4. d8

%- 50 -
    d4 r4 r2
    r1
    r1
    r2 g2^\markChorus ~
    g1 ~

%- 55 -
    g2 ~ g8\noBeam d\noBeam g\noBeam d\noBeam
    g8\noBeam d\noBeam g\noBeam d\noBeam g4 c4
    d2 g,4 r4
    r2^\fermata b,2^\p
    r4 b4 c2

%- 60 -
    r2 cis2
\stemUp
    r4 cis4 d2
\stemNeutral
    r2 g2(
    f2) e2(
    d2) c2(

%- 65 -  
\stemUp  
    cis2) d2 ~
    d2 d2 ~
    d2 g,4 r4
    r2^\fermata d'4^\p r4
    r2^\fermata g,2^\fermata^\pp

\stemNeutral
}

bassWords = \lyricmode { 

% -- just sop/alto

% - a little ahead:
% - 4 -

    Glo -- ry be to God, __
    
    Glo -- ry, glo -- ry in the high -- est,

    Glo -- ry,
    Glo -- ry, glo -- ry in the high -- est,

% - 11.5 -
% - Soli (sop/alto)

% - 14 -
% - Chorus
    Glo -- ry in the high -- est,

% - 15 -
% - Soli:  sop/alt

% - 17.5
% - Chorus
    Glo -- ry in the high -- est,
    Glo -- ry, 

    glo -- ry, glo -- ry in the high -- est,
    Glo -- ry,

% - 23 - 
% -- Alto/tenor/bass solo 
    Glo -- ry,

% - Chorus
    glo -- ry, glo -- ry in __ the high -- est.

% -- other stuff here....

% - 30 -  Bass solo:
%    And on earth peace, on earth __
    And on earth peace, on earth

% - 33 -
% -- back to chorus
    Peace, __ Peace __ on earth,
    Good -- will, good -- will,
    good -- will toward men!

% - 43 -
    Glo -- ry, 

    Glo -- ry, glo -- ry in the high -- est,

% - 47 -
    and on earth

    Peace, __ Peace __ on earth.

% - 50 -
% - Tenor solo:

% - 53 -
% - chorus
    Glo -- ry, 

    Glo -- ry, glo -- ry in the high -- est;
    Glo -- ry.

% - 58 -
    Peace on earth,
    Peace on earth,

    Good -- will, __ good -- will __ toward __ men!

% - 68 -
    Peace! Peace!
}


% --- Organ parts:

organRightMusic =  \relative c'' {
%- 1 -


%-- '\tempo' not working, so used workaround    
     <g b>8^\markup { \larger { Allegro. } (\note #"4" #1 = 80)}
        <g b>4 <a c>16( <fis a>) <b d>8 <b d>4 <c e>16( <a c>)
    <g b>8 <g b>4 <a c>16( <fis a>) <b d>8 <b d>4 <c e>16( <a c>)
    <g b>8 <a c>16( <fis a>) <g b>8 <a c>16( <fis a>) <g b>8 <a c>16( <fis a>) <g b>8 <a c>16( <fis a>)
%    << { <g b>8.( <fis a>16) g4 <d' fis>8 <d fis>4 <e g>16( <cis e>) } \\ { d4 s4*3 } >>
    << { <g b>8.( <fis a>16) } \\ { d4 } >>
        g4 <d' fis>8 <d fis>4 <e g>16( <cis e>)

%- 5 -
    <fis a>8 <fis a>4 <g b>16( <e g>) <d fis>8 <d fis>4 <e g>16( <cis e>)
    <fis a>8 <fis a>4 <g b>16( <e g>) <a, d fis>8 <a cis e g> <a d fis> <a cis e g>
    <a d fis>8 <e' g>16( <cis e>) <d fis>8 <e g>16( <cis e>) 
        << { <d fis>8.( e16) d8 c } \\ { a4 d8 c } >>
    << { <g b>8 <g b>4 <a c>16( <fis a>) <b d>8 <b d>4 e16(c) } \\
       {d,8 d4 d8 d d4 c'16(a) } >>
    << { <g b>8 <g b>4 <a c>16( <fis a>) <b d>8 <b d>4 e16 c } \\
       {d,8 d4 d8 d d4 c'16 a } >>

%- 10 -
    << { b8 c16 a b8 c16 a b8 c16 a b8 c16 a } \\
       { g8[ fis] g[ fis] g[ fis] g[ fis] } >>
% - for the crescendo
%\dynamicUp
    <d g b>8. <c fis a>16 <b g'>4
        << { \noDynamic d'4 \p ^\< ~ d16 e c\! d } \\ { b4 ~ b8 a } >>
    << { b16 d c e d8 } \\ {g,8[ a] b} >> r8
        << { d4 ~ d16 e c d } \\ { b4 ~ b8 a } >>
    << { b16 d c e d8 } \\ {g,8[ a] b} >> r8
        << { g'16( f e d) g( f e d) } \\ { e16 d c b e d c b } >>
    << { e8  f16 d e8 f16 d e8. c16 c4 } \\
       { <g c>8[ b] <g c>[ b] <g c>8. <e g>16 <e g>4 } >>

%- 15 -
    << { e'4 ~ e16 fis! d e cis e d fis e8 } \\ 
       { cis4 ~ cis16 d b cis a cis b d cis8 } >> r8
    << { e4 ~ e16 fis d e cis e d fis e8 } \\ 
       { cis4 ~ cis16 d b cis a cis b d cis8 } >> r8
    << { a'16( g fis e) a( g fis e) fis8 g16 e fis8 g16 e } \\
       { fis16 e d cis fis e d cis <a d>8[ <a cis>] <a d>[ <a cis>] } >>
    << { fis'8[ d] } \\ { <a d>8[ <d, fis a>] } >>
        <e e'>8 <fis fis'> <g b d g> <b g'>4 <c! a'>16( <a fis'>)
    <d b'>8 <d b'>4 <e c'>16 <c a'> <b g'>8 <b g'>4 <c a'>16 <a fis'>

%- 20 -
    <d b'>8 <d b'>4 <e c'>16 <c a'>
        << { g'8 fis g fis } \\ { b,8 c16 a b8 c16 a } >>
    << { g'8 fis g fis g16 b g d e c g' c,} \\ { b8 c16 a b8 c16 a b8[ b] g[ g]} >>
    << { b8 g' c, fis } \\ { g,4 a } >>
        <g b g'>4 r4
    <d g b>8 <g b>4 <a c>16(<fis a>) <b d>8 <b d>4 <c e>16( <a c>)
    <g b>8 <g b>4 <a c>16( <fis a>) <b d>8 <b d>4 <c e>16( <a c>)

%- 25 -
    <b d g>8 <a c d fis> <b d g> <a c d fis> <b d g>4 <g c e>8 <g c e>
    << { d'8[ g] c,[ fis] } \\ { <g, b>8[ g'] a,[ fis'] } >>
        <b, g'>16 <g' b> <g b> <g b> <g b> <g b> <g b> <g b>

    % -- should be sixteen of those
    <g b>16 <g b> <g b> <g b> <g b> <g b> <g b> <g b> 
        <g b> <g b> <g b> <g b> <g b> <g b> <g b> <g b> 
    <g b>16 <g b> <g b> <g b> <g b> <g b> <g b> <g b> 
        <g b> <fis a> <e g> <d fis> <c e> <b d> <a c> <g b>
    <g' b> <fis a> <e g> <d fis> <c e> <b d> <a c> <g b>
        << { d4 } \\ { d4 } >> <a' c d fis>4

%- 30 -
\slurUp
    << { g'8 d g,4^\fermata } \\ { <g b d>4 g } >>
        <c, e g>8^.( <c e g>^. <c e g>^. <c e g>^.)
    <c e g>8^.( <c e g>^. <c e g>^. <c e g>^.)
        <g d' g>^. ( <g d' g>^.  <g d' g>^.  <g d' g>^. )
    <g d' g>8^. ( <g d' g>^.  <g d' g>^.  <g d' g>^. )
        <c g'>^.( <c g'>^. <c g'>^. <c g'>^.)
    <a c fis>8^.( <a c fis>^. <a c fis>^. <a c fis>^.) <g b g'>^.( <b d>^. <b d>^. <b d>^.)
    <b d>8^.( <b d>^. <b d>^. <b d>^.) <c e>^.( <c e>^. <c e>^. <c e>^. )

%- 35 -
% -- one note in this measure in the score w/o a dot; mistake or on purpose?
    <c e>8^.( <c e>^. <c e>^. <c e>^.) <b d> g-. b-. d-.

    g8-. b-. d4-. <d, g>8^.( <d g>^. <d g>^. <d g>^.)
    <d g>8^.( <d g>^. <d g>^. <d g>^. ) <e g> g,-! c-! e-!
\stemDown
    g8-! c-! e4-! \stemNeutral <e, a>8^.( <e a>^. <e a>^. <e a>^.)
    <e a>8^.( <e a>^. <e a>^. <e a>^.) <fis a> d-! fis-! a-!

%- 40 -
    d8-! fis-! a4 <d,, g b>8 <d g b> <d g b> <d g b>
    <c e a>8 <c e a> <c e a> <c e a> <b d g> <b d g> <b d g> <b d g>
    <a c d fis>8 <a c d fis> <a c d fis> <a c d fis> <b d g>2
    r2^\fermata <g' c e>8 <g c e>4 <d' f>16 <b d>
    <e g>8 <g, e' g>4 <f' a>16 <d f> <c e>8 <g c e>4 <d' f>16 <b d>

%- 45 -
    << { g'8 g4 a16 f e8 f16 d e8 f16 d } \\ { e8 <g, e'>4 f'16 d <g, c>8 <g b> <g c> <g  b> } >>
    << { e'8 f16 d e8 f16 d } \\ { <g, c>8[ <g b>] <g c>[ <g b>] } >> <g c e>8.( <e g c>16) <e g c>4
    r2 <d fis! a>8-! <d fis a>-! <d fis a>-! <d fis a>-!
    <d fis a>8 <d fis a> <d fis a> <d fis a> <d g b> <d g b> <d g b> <d g b>
    <d g b>8 <d g b> <d g b> <d g b> <d fis a> d'-! a-! fis-!

%- 50 -
    d8 r8 r4 << { a''4 ~ a16 b g a } \\ { fis4 ~ fis8 e } >>
    << { fis16 a g b a8 } \\ { d,8[ e] fis } >> r8 << { a4 ~ a16 b g a } \\ { fis4 ~ fis8 e } >>
    << { fis16 a g b a8 } \\ { d,8[ e] fis } >> r8 <b d>16( <a c> <g b> <fis a>) <b d>( <a c> <g b> <fis a>) 
    <b d>16( <a c> <g b> <fis a>) <b d>( <a c> <g b> <fis a>) <g, b d g>8 <b g'>4 <c a'>16 <fis>
    <d b'>8 <d b'>4 << { c'16 a } \\ { <c, fis>8 } >> <b g'>8 <b g'>4 << { a'16 fis } \\ { c8 } >>

%- 55 -
    << { b'8 b4 c16 a g8 a16 fis g8 a16 fis } \\ { d8 d4 <c fis>8 <b d> <c d> <b d> <c d> } >>
    << { g'8 a16 fis g8 a16 fis } \\ { <b, d>8 <c d> <b d> <c d> } >> b16 g' d b e c g' c,
    <b d>8-! g'-! <a, c>-! fis'-! <g, b g'>4 r4
\slurDown
    r2^\fermata g16[( d8.) b'16( g8.)]
    d'16[( b8.) g16( f8. )] e8 c-! e-! g-!

%- 60 -
    c8-! e-! g4 a,16[( e8.) cis'16( a8.) ]
\stemUp
    e'16[( cis8. ) a16( g8.)] fis!8 d-! fis-! a-!
\stemNeutral
\slurNeutral
    d-! fis-! a4-! <d,, g b>8-! <d g b>-! <d g b>-! <d g b>-!
    <d g b>8 <d g b> <d g b> <d g b> <e gis b> <e gis b> <e gis b> <e gis b>
    <e gis b>8 <e gis b> <e gis b> <e gis b> <a, e' a> <a e' a> <a e' a> <a e' a>

%- 65 - 
    <a e' g! a>8 <a e' g a> <a e' g a> <a e' g a> <d fis a> <fis' a> <fis, a> <fis' a>
    <g, b>8 <g' b> <g, b> <g' b> <d, g a> <d g a> <d g a> <d g a>
    <d fis a>8 <d fis a> <c fis a> <c fis a> <b d g>4 r4
    r2^\fermata << { <d fis a>4 } \\ { c4 } >> r4
    r2^\fermata <g b d g>2^\fermata

}

organLeftMusic =  \relative c {
%- 1 -

    << { g'8^\markup { \dynamic { p } Sw 8' with Oboe } g g g g g g g } \\ { g,2_\markMan g } >>
    << { g'8 g g g g g g g } \\ { g,2 g } >>
    g'8 d g d g d g d
%-- couple of lines (to 5.5)
    <g, g'>8 <a a'> <b b'> <cis cis'>  << { d'8^\markup { \dynamic { f } Gt. Diap'ns (Sw. to Gt.) }
	d d cis d d d cis d d d cis d d d cis } \\
      { <d,, d' a'>2_\markPed ~ <d d' a'> ~ <d d' a'> ~ <d d' a'> } >>
%    <g, g'>8 <a a'> <b b'> <cis cis'>  << { d'8 d d cis d d d cis } \\ 	 { <d,, d' a'>2 ~ <d d' a'> ~ } >>

%<< { d8 d d cis d d d cis } \\ { <d d' a'>2 ~ <d d' a'> } >>
				

%- 5.5 -
    <d' a' d>8 <a a'> <d a' d> <a a'>
    <d a' d>8 <a a'> <d a' d> <a a'> <d d'> <c! c'!> <b b'> <a a'>

% - multi
    << { g'8 g g fis  g g g fis  g g g fis  g g g fis } \\
       { <g, d'>2 <g d'> <g d'> <g d'> } >>

%- 10 -
    <g d' g>8 <d d'> <g d' g> <d d'> <g d' g>8 <d d'> <g d' g> <d d'>

% - multi
    << { g'8. g16 g4  g,8^\markPSW g' g g  g, g' g g  g, g' g g  g, g' g g  g, g' g g } \\
       { <g, d'>4 <g d'> g2_\markMan g2 g2 g2 g2} >>

%- 14 -
    <c g' c>8^\markFGT_\markPed <g d' g> <c g'> <g d' g> <c g'>8. <c, g' c>16 <c g' c>4

%- 15 -
% - multi
    << { a'8^\markPSW a' a a  a, a' a a  a, a' a a  a, a' a a  a, a' a a } \\ 
       { a,2_\markMan a a a a } >>

%- 16 + ---
    <d a' d>8^\markup { Gt. }_\markPed <a e' a> <d a'> <a e' a>

% - 17 - 
% - multi
    <d a'>4 r4 << { g8^\ff g g fis  g g g fis  g g g fis  g g g fis } \\
		  { <g, d'>2 <g d'> <g d'> <g d'> } >>

%-- 20 + --
    <g d' g>8 <d' a' d> <g d'> <d a' d>
    <g d'>8 <d a' d> <g d'> <d a' d> <g d'>[ <g d'>] <c, g' c>[ <c g' c>]
    <d g b d>4 <d a' d> \stemDown <g, d' g> \stemNeutral r4

% 23
%- multi -
    << { g'8^\markPSW g g g  g g g g  g g g g  g g g g } \\
       { g,2_\markMan g g g } >>

%- 25 -
    <g d' g>8^\markFGT_\markPed <d' d'> <g d'> <d d'> <g d'>4 <c, c'>
    <d d'>4 <d a' d> <g, d' g>8 <g g'> <fis fis'> <e e'>
    <d d'>8 <e e'> <d d'> <c c'> <b b'> <e e'> <d d'> <c c'>
    <b b'>8 <c c'> <b b'> <a a'> <g g'> <g g'> <g g'> <g g'>
    <g g'>8 <a a'> <b b'> <c c'> <d d'>4 <d a' d>

%- 30 -
    \stemDown <g d' g>4 <g g'>^\fermata \stemNeutral r2^\markPSW 

\slurDown
    c8-._\markMan ( c-. c-. c-.) b-.( b-. b-. b-.)
    b8-.( b-. b-. b-.) a-.( a-. a-. a-.)
\stemUp
    d8_\markup { Soft \markPed sustain } d d d  g, g g g
\stemNeutral
    g8 g g g  g g g g

%- 35 -
    g8 g g g  g g g g
    g4 r4 <b g'>8_\markMan <b g'> <b g'> <b g'> 
    <b g'>8 <b g'> <b g'> <b g'> c4 r4
\slurUp
    r2 <cis a'>8-.( <cis a'>-. <cis a'>-. <cis a'>-.) 
    <cis a'>8-.( <cis a'>-. <cis a'>-. <cis a'>-.) <d a'>4 r4

%- 40 -
    r2 g8 g g g
    c,!8 c c c \stemUp d2 ~ \stemNeutral
    <d, d'>2 g2
    r2^\fermata

% - multi
    << { c8^\markup { \dynamic { ff } Gt. Full Org. } c c c  c c c c  c c c c  c c c c } \\
       { <c, g'>2_\markPed <c g'> <c g'> <c g'> } >>

%-- 45 + --
    <c' g' c>8 <g d' g> <c g' c> <g d' g>
    <c g' c>8 <g d' g> <c g' c> <g d' g> <c g' c>8. <c g' c>16 <c g' c>4
    c'8-!^\markup { Sw. }_\p b-! a-! g-!

%- multi
    << { d8 d d d  d d d d  d d d d  d d d d  d d d d  d } \\
       { d,2_\markPed ~ d1 ~ d1 ~ d8 } >>

%-- 50 + 1/8 --
    \stemUp a''8_\markMan b cis  \stemNeutral d d d d
    d8 d d d  d d d d
    d8 d d d  d^\< d d d\!
    d8^\< d d d\!

%- multi
    << { g,8^\markup { Gr. Full Org } g g g  g g g g  g g g g  g g g g } \\
       { <g, d'>2 <g d'> <g d'> <g d'> } >>

%-- 55 + --
    <g d' g>8 <d a' d> <g d' g> <d a' d>
    <g d' g>8 <d a' d> <g d' g> <d a' d> <g d' g>[ <g d' g>] <c c'>[ <c c'>]
    \stemUp d8 d d d g,4 r4 \stemNeutral
    r2^\fermata <b d g>2^\markPSW_\markMan
    r4 <b d g>4 <c e g> <c, c'>

%- 60 -
    r2 <cis' e a>2
    r4 <cis e a>4 <d fis a> r4
    r2 

%- multi
    << { g8^\p g g g  f f f f  e e e e  d d d d  c c c c  cis cis cis cis } \\
       { g2_\markPed f e d c cis } >>

%-- 65 + --
    <d d'>2
    <d d'>2 <d d'>
    <d d'>2 g4 r4
    r2^\fermata <d a' d>4^\p r4
    r2^\fermata <g, d' g>2^\fermata^\pp
}


\score {
     

    <<
	\new ChoirStaff <<
	    \context Staff = "sopranos" <<
		\set Staff.instrumentName = \markup { 
		    \larger { \bold { "Soprano.   " }}}
		\global
		\clef violin
		
		\context Voice = "sopranos" { \sopMusic }
		
		% lyrics now go BELOW the staff... 
		\context Lyrics = "sopranos" { s1 }
	    >>
	    
	    \context Staff = "altos" <<
		\set Staff.instrumentName = \markup { 
		    \larger { \bold { "Alto.   " }}}
		\global
		\clef violin
		
		\context Voice = "altos" { \altoMusic }
		\context Lyrics = "altos" { s1 }
	    >>
	    
	    \context Staff = "tenors" <<
		\set Staff.instrumentName = \markup { 
		    \larger { \bold { "Tenor.   " }}}
		\global
		\clef violin
		
		\context Voice = "tenors" {\tenorMusic }
		\context Lyrics = "tenors" { s1 }
	    >>
	    
	    \context Staff = "basses" <<
		\set Staff.instrumentName = \markup { 
		    \larger { \bold { "Bass.  " }}}
		\global
		\clef bass
		
		\context Voice = "basses" { \bassMusic }
		\context Lyrics = "basses" { s1 }
	    >>
	>>

% --- Organ

	\context PianoStaff <<
	    \set PianoStaff.instrumentName = \markup {
		\larger { \bold { "Organ. " }}}
	    
	    \context Staff = organRight <<
		\global
		\clef violin
		\organRightMusic
	    >>
	    
	    \context Staff = organLeft <<
		\global
		\clef bass
		\organLeftMusic
	    >>
	    
	>>
	
	
	      
	\context Lyrics = "sopranos" \lyricsto sopranos \sopWords
	\context Lyrics = "altos" \lyricsto altos \altoWords
	\context Lyrics = "tenors" \lyricsto tenors \tenorWords
	\context Lyrics = "basses" \lyricsto basses \bassWords
	
	
% -- for the StaffGroup   
    >>

    
    \layout {
      
	\context {
	    
	% a little smaller so lyrics can be closer to the staff. 
	    \Staff
	    \override VerticalAxisGroup.minimum-Y-extent = #'(-3 . 3) 
	}
    }
    
    
  \midi {
    \tempo 4 = 80
    }


}
