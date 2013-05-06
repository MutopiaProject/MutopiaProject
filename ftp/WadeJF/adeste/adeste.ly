\include "paper16.ly"

\version "2.1.0"
\header {
    mutopiatitle = "Adeste Fideles"
    mutopiacomposer = "J. F. Wade"
    mutopiapoet = "Traditional"
    mutopiainstrument = "SATB"
    date = "18th century"
    source = "Cantus Diversi, 1751"
    style = "Classical"
    copyright = "Public Domain"
    maintainer = "Matt Corks"
    maintainerEmail = "mvcorks@alumni.uwaterloo.ca"
    lastupdated = "2003/Nov/04"
    title = "Adeste Fidelis"
    poet = "Latin 18$^{th}$ Century"
    composer = "John F. Wade"
    mutopiapoet = ""
    mutopiacomposer = "WadeJF"

    tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
    footer = "Mutopia-2003/11/04-367"
}

upper = \notes
    \relative c' {
    \slurDown
    \clef "treble"
    \key a\major
    \property Staff.TimeSignature \set #'style = #'numbered
    \time 4/4
    \partial 4 
    <e a>4 | <e a>2 << e4 \\ e4 >> <cis a'> | <e b'>2 <<e\\e>> |
    <e cis'>4 <e b'> <e cis'> <fis d'> |
    <e cis'>2 <e b'>4 <cis a'> |
    \break
    << a'2 \\ { cis,4 (dis4) } >> <e gis> <dis fis> |
    << { gis (a) } \\ { \stemUp e (e) } >> <e b'> <e cis'> |
    << { gis2 (fis4.) } \\ { \stemUp e2 (dis4.) } >> << e8 \\ e8 >> |
    <e e>1 | 
    \break
    <e e'>2 << d'4 \\ {fis,8 [gis8]} >> \stemUp <a cis>4 |
    << {\stemDown \slurDown fis4 (gis)} \\ \stemUp d'2 >> <a cis>2 |
    <e b'>4 <e cis'> <fis a> <fis b> |
    << {gis4. (fis8)} \\ e2 >> << e4 \\ e4 >>
    \bar "|" \break
    a | a gis a b | a2 e4 <e cis'> |
    <e cis'> <e b'> <e cis'> <gis d'> |
    <a cis>2 <gis b>4
    \bar "|" \break
    <a cis> |
    << {\stemDown fis8 [gis]} \\ \stemUp d'4>> 
    <a cis>4 <e b'> <dis a'> |
    <e gis>2 <<{a4 (d)}\\{\stemUp e,4 (fis)}>> |
    << { \slurDown e2 (e4.) } \\ { \stemUp \slurUp cis'2 (b4.) } >> <cis, a'>8 |
    <cis a'>2.
    \skip 4
    \bar "||"
    <d a'>2 <cis a'>
    \bar "|."
    }

lower = \notes
    \relative c {
    \clef "bass"
    \key a\major
    \property Staff.TimeSignature \set #'style = #'numbered
    \time 4/4
    \partial 4
    <a cis'>4 | <a cis'>2 <cis a'>4 <a a'> | <e' gis>2 <gis b> |
    << a4 \\ a4 >> <gis b> << a \\ a >> <a d,> |
    <e a>2 <e gis>4 <fis a> |
    <fis a>2 <e b'>4 <b b'> |
    << {e (cis)} \\ { \stemUp b (a) } >> <gis gis'> <a fis'> |
    << { \slurDown \stemDown b2 (b4.) }\\ { \slurUp b'2 (a4.)} >> <e gis>8 |
    <e gis>1 |
    <<cis'2 \\ cis2>> <b d>4 <a e'> | <b d>2 <a e'> |
    <gis e'>4 <<a\\a>> <fis cis'> <d d'> |
    << \stemDown e2 \\ {\slurUp \stemUp b'4. (a8)}>> <e gis>4
    r4 
    R1 R1 R1 r2 r4
    <a e'>4 |
    <b d> <a e'> <gis b> <fis b> |
    << b2 \\ { e,4 (d)} >>
    << { \stemDown \slurDown cis4 (d) } \\ \stemUp a'2 >> |
    << { \stemDown a2 (gis4.) } \\ { e2 (e4.) }>> <a, a'>8 |
    <a a'>2.
    \skip 4
    \bar "||"
    <d fis>2 <a e'>
    \bar "|."
    }

verbaone = \context Lyrics = verbaone \lyrics {
    A4 -- des2 -- te,4 fi -- del2 -- es,
    Lae2 -- ti4 trium -- phan2 -- tes,4
    Ven4 -- i2 -- te,4 ven-- i2 -- te4 in Beth2.. -- le8 -- hem.1
    Na2 -- tum4 vi -- de2 -- te
    Reg4 -- em ang-- el-- or2 -- um.4
    Ven -- i -- te a -- dor -- e2 -- mus,4
    Ven -- i -- te a -- dor -- e2 -- mus,4
    Ven -- i -- te a -- dor -- e2 -- mus,
    Do2.. -- mi8 -- num.2.
    _4
    A2 -- men.
    }

verbatwo = \context Lyrics = verbatwo \lyrics {
    Can2. -- tet4 nunc hym2 -- nos
    Cho4 -- rus ang -- el -- or2 -- um;4
    Can2. -- tet4 nunc au2 -- la4 cae2. -- les4. -- ti8 -- um:1
    `Glo2 -- ri4 -- a, Glo2 -- ria
    In4 ex -- cel -- sis Deo.'1
    }

verbathree = \context Lyrics = verbathree \lyrics {
    Er2. -- go4 qui na2 -- tus
    di4 -- e ho -- di -- er2 -- na4
    Ie2. -- su4 ti4 -- bi2 si4 -- t glo2.. -- ri8 -- a1
    Pa2 -- tris4 ae -- ter2 -- ni
    Ver4 -- bum ca -- ro fact2 -- um4
}


\score{ 
    \context ChoirStaff {
        <<
        \new Staff { \upper }
        \new Lyrics { \verbaone }
        \new Lyrics { \verbatwo }
        \new Lyrics { \verbathree }
        \new Staff { \lower }
        >>
    }

\paper{ \translator{
           \ThreadContext
           \remove "Note_heads_engraver"
           \consists "Completion_heads_engraver" }
         \translator{
           \StaffContext minimumVerticalExtent = #'(-3 . 3) } 
       linewidth = 455.244096\pt }

\midi { \tempo 4 = 120 }
}

% Adeste, fideles,
% Laeti triumphantes,
% Venite, venite in Bethlehem.
% Natum videte
% Regem angelorum.
% ||: Venite adoremus, :||
% Dominum.
% 
% En grege relicto,
% Humiles ad cunas
% Vocati pastores approperant.
% Et nos ovanti
% Gradu festinemus;
% ||: Venite adoremus, :||
% Dominum.
% 
% Stella duce, Magi
% Christum adorantes
% Aurum, tus, et myrrham dant munera.
% Iesu infanti
% Corda praebeamus;
% ||: Venite adoremus. :||
% Dominum.
% 
% Cantet nunc hymnos
% Chorus angelorum;
% Cantet nunc aula caelestium:
% "Gloria, gloria
% In excelsis Deo!"
% ||: Venite adoremus, :||
% Dominum.
% 
% Deum de Deo,
% Lumen de Lumine,
% Gestant puellae viscera,
% Deum verum,
% Genitum non factum.
% ||: Venite adoremus. :||
% Dominum.
% 
% Aeterni Parentis
% splendorem aeternum,
% Velatum sub carne videbimus;
% Deum infantem
% pannis involutem.
% ||: Venite adoremus. :||
% Dominum.
% 
% Pro nobis erenum
% et foeno cubantem,
% Piis foveamus amplexibus.
% Sic nos amantem
% quis non redamaret?
% ||: Venite adoremus. :||
% Dominum.
% 
% Ergo qui natus
% die hodierna
% Iesu tibi sit gloria
% Patris aeterni
% Verbum caro factum
% ||: Venite adoremus. :||
% Dominum.

