\version "2.11.9"
\header {
 title = "Good King Wenceslas"
 composer = "Anonymous"
poet = "John Mason Neale (1818-1866)"
 mutopiatitle = "Good King Wenceslas"
 mutopiacomposer = "Anonymous"
 mutopiapoet = "J.M. Neale (1818-1866)"
 mutopiainstrument = "Voice"
 date = "1853"
 source = "Sheet Music from Rev. Charles Lewis Hutchins, Carols Old and Carols New (Boston: Parish Choir, 1916), Carol #415"
 style = "Song"
 copyright = "Public Domain"
 maintainer = "James Kilfiger"
 maintainerEmail = "james.kilfiger@gmail.com"
 lastupdated = "2007/Jan/08"
 footer = "Mutopia-2007/01/10-905"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
\new ChoirStaff
\relative a' <<
  \new Staff { 
    << {
      \key a \major
      \time 4/4 \tempo 4 = 120
       a4 a a b 
       a a e2
       fis4 e fis gis
       a2 a2
       a4 a a b 
       a a e2
       fis4 e fis gis
       a2 a2
       e'4 d cis b
       cis b a2
       fis4 e fis gis
       a2 a2
       e4 e fis gis
       a a b2
       e4 d cis b
       a2( d)
       a1
     }
     \addlyrics {
     Good King Wen -- ces -- las looked out,
     On the Feast of Ste -- phen,
     When the snow lay round a --  bout,
     Deep and crisp and e -- ven:
     Bright -- ly shone the moon that night,
     Though the frost was cru -- el,
     When a poor man came in sight,
     Gath'- ring win -- ter fu -- el }
     \\
     {
       e4 e fis e
       e fis b,2
       d4 e d d
       e2 e2
       e4 e fis e
       e fis b,2
       d4 e d d
       e2 e2
       a4 a4 a4 gis
       a gis fis2
       a,4 e' d d
       e2 e
       e4 e d d
       cis cis e2
       e4 a a gis
       a2( fis)
       e1
     } >>
  }
  \relative a
  \new Staff { 
    \clef bass
    \key a \major
    << { 
	cis4 cis cis b
	cis d gis,2
	a4 a a b 
	cis2 cis2
        cis4 cis cis b
	cis d gis,2
	a4 a a b 
	cis2 cis2
	e4 fis e e 
	e e cis2
	d4 a a b
	cis2 cis
	a4 a a b 
	a a gis2
	a4 fis' e e
	cis2( d)
	cis1
    }
    \\
    {
    a4 a fis gis
    a d, e2
    d4 cis d b
    a2 a2
    a'4 a fis gis
    a d, e2
    d4 cis d b
    a2 a2
    cis4  d e e
    a e fis2
    d4 cis d b
    a2 a2
    cis4 cis d b 
    fis' fis e2
    cis4 d e e
    fis2( d)
    a'1
    } >>
  }
>>
\midi {}
\layout {}
}



%{
1. Good King Wenceslas looked out,
On the feast of Stephen,
When the snow lay round about,
Deep and crisp and even:
Brightly shone the moon that night,
Though the frost was cruel,
When a poor man came in sight,
Gathering winter fuel.

2. "Hither page and stand by me,
If thou know'st it, telling,
Yonder peasant, who is he,
Where and what his dwelling?"
"Sire, he lives a good league hence,
Underneath the mountain,
Right against the forest fence,
By Saint Agnes' fountain."

3. "Bring me flesh and bring me wine,
Bring me pine logs hither:
Thou and I will see him dine,
When we bear them thither."
Page and monarch forth they went,
Forth they went together;
Though the rude winds wild lament,
And the bitter weather.

4. "Sire, the night is darker now,
And the wind blows stronger;
Fails my heart, I know now how,
I can go no longer."
"Mark my footsteps, my good page;
Tread thou in them boldly;
Thou shalt find the winter's rage
Freeze thy blood less coldly."

5. In his master's steps he trod,
Where the snow lay dinted;
Heat was in the very sod
Which the saint had printed.
Therefore, Christian men, be sure,
Wealth or rank possessing,
Ye who now will bless the poor,
Shall yourselves find blessing.
 
 %}
