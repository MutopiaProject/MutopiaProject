\version "2.16.1"

\header{
    title = "Ich grolle nicht"
    subtitle = "excerpt from Dichterliebe, opus 48"
    composer = "Robert Schumann (1810 - 1856)"
    poet = "Heinrich Heine (1797 - 1856)"
    piece = "Nicht zu schnell."
    arranger = "opus 48, n° 7"

 mutopiatitle = "Ich grolle nicht"
 mutopiacomposer = "SchumannR"
 mutopiapoet = "H. Heine (1797-1856)"
 mutopiaopus = "Op. 48, No. 7"
 mutopiainstrument = "Voice, Piano"
 mutopiaarranger = " "
 date = "1840"
 source = "Breitkopf & Härtel, 1882"
 style = "Romantic"
 copyright = "Public Domain"
 maintainer = "Alexandre Benéteau"
 maintainerEmail = "alexandre-beneteau@fr.st"
 maintainerWeb = "http://www.alexandre-beneteau.fr.st/"
 
 footer = "Mutopia-2013/09/01-309"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


#(set-global-staff-size 16)
\include "italiano.ly"

% le chant

global =  {
  \time 4/4
  \key la \minor
}

text = \lyricmode {
  Ich grol -- le nicht, und wenn das Herz __ auch bricht.
  E -- wig ver -- lor' -- nes Lieb, e -- wig ver -- lor' -- nes Lieb, __ ich grol -- le nicht, ich grol -- le nicht.
  Wie du auch strahlst in Di -- a -- man -- ten -- pracht, es fällt kein Strahl in dei -- nes Her -- zens Nacht, das weiss ich längst.__

  Ich grol -- le nicht, und wenn das Herz __ auch bricht.
  Ich sah dich ja im Trau -- me, und sah die Nacht in dei -- nes Her -- zens Rau -- me,
  und sah die Schlang', die dir am Her -- zen
  frisst,__ ich sah, mein Lieb, wie sehr du e -- lend bist.

  Ich grol -- le nicht,
  ich grol -- le nicht.__

}

chant =  \relative do' \context Voice = "chant" {
    \global
    \autoBeamOff
    \dynamicUp
    r2 r8 mi\mf re8. do16 fa2 r8 fa fa fa lab2. ~ lab8 sol mi2 r
    mi4 mi8 mi si'4. la8 la2 r la4 la8 la mi'4. re8 re2 ~ re4. re8 re2 ~ re4. do8
    si2 r4 r8 sol sol2 ~ sol4. fa8 mi2 r8 mi mi mi la2 r8 mi mi8. mi16 la8. mi16 mi4 r8 fad fad fad
    si2 r8 fad fad fad si8. fad16 fad4 r8 sol^\markup { \dynamic "f" \italic "ritard." } sol sol sol1 ~ sol2 r
    % deuxieme page
    r2 r8 mi\f re8. do16 fa2 r8 fa fa fa lab2. ~ lab8 sol mi2 r4 r8 mi\p mi4. mi8 si'4. si8
    la4 la r8 la\< la la la la la la mi'4. mi8\! re4 re r8 re re re re^\markup { \italic "cresc." }
    re re re
    <<
    {
      \voiceOne
      \override NoteHead #'font-size = #-3
       la'4. la8 sol2 ( fa8)
      \override TextSpanner #'(bound-details left text) = \markup {\italic ritard.}
      fa \startTextSpan fa fa fa fa fa fa mi4. re8 \stopTextSpan 
      \override NoteHead #'font-size = #1
    }
    \new Voice
    {
      \voiceTwo
      \autoBeamOff
      re4. re8 re2 ( dod8) dod dod dod do! do do do si4. si8 }
    >>
    \oneVoice
    do4
    r r8 si\f si si la2 r8 sol sol sol 
    do,1 ~ do2 r2 R1 R 
    r4
    \bar "|."
}

% definition main droite
md =  \relative do' \context Voice = "md" { % Par carrures de 4 mesures  1 mesure par ligne
    \global
    <sol do mi>8->\mf <sol do mi> <sol do mi> <sol do mi> <sol do mi>-> <sol do mi> <sol do mi> <sol do mi>
    <fa do' fa>-> <fa do' fa> <fa do' fa> <fa do' fa> <la do fa>-> <la do fa> <la do fa> <la do fa> 
    <lab do fa>-> <lab do fa> <lab do fa> <lab do fa> <sol si re fa>-> <sol si re fa> <sol si re fa> <sol si re fa> 
    <sol do mi>-> <sol do mi> <sol do mi> <sol do mi> <sold do mi>-> <sold do mi> <sold do mi> <la do mi>

    <la do mi>-> <la do mi> <la do mi> <la do mi> <do mi si'>-> <do mi si'> <do mi si'> <do mi si'>
    <do mi la>-> <do mi la> <do mi la> <do mi la> <do sol' la>-> <do sol' la> <do sol' la> <do sol' la>
    <do fa la>-> <do fa la> <do fa la> <do fa la> <fa la mi'>-> <fa la mi'> <fa la mi'><fa la mi'>
    <fa la re>-> <fa la re> <fa la re> <fa la re> <fa do' re>-> <fa do' re> <fa do' re> <fa do' re> 
<fa si re>-> <fa si re> <fa si re> <fa si re> <re fad do'>-> <re fad do'>  <re fad do'>  <re fad do'>
    <re sol si>-> <re sol si> <re sol si> <re sol si> <do fa! la> <do fa la> <do fa la> <do fa la>
    <sol dod mi sol> <sol dod mi sol> <sol dod mi sol> <sol dod mi sol> <sol re' fa> <sol re' fa> <sol re' fa> <sol re' fa> 
    <sol do mi> <sol do mi> <sol do mi> <sol do mi> <sol si mi> <sol si mi> <sol si mi> <sol si mi>

    <do mi la>-> <do mi la> <do mi la> <do mi la> <sol si mi> <sol si mi> <sol si mi> <sol si mi>
    <do mi la>-> <do mi la> <do mi la> <do mi la> <lad dod fad> <lad dod fad> <lad dod fad> <lad dod fad> 
    <re fad si>-> <re fad si> <re fad si> <re fad si> <lad dod fad> <lad dod fad> <lad dod fad> <lad dod fad> 
    <re fad si>-> <re fad si> <re fad si> <re fad si> <si re sol>^\markup {\italic "ritard." } <si re fa! sol>  <si re fa sol> <si re fa sol>

    <si re fa sol> <si re fa sol> <si re fa sol> <si re fa sol> <do fa sol>\< <do fa sol> <do fa sol> <do fa sol> 
    <sol dod mi sol> <sol dod mi sol> <sol dod mi sol> <sol dod mi sol> <sol re' fa sol>\! <sol re' fa sol> <sol re' fa sol> <sol re' fa sol>

     % Deuxieme page
    <sol do mi>8->\f <sol do mi> <sol do mi> <sol do mi> <sol do mi> <sol do mi> <sol do mi> <sol do mi>
    <fa do' fa> <fa do' fa> <fa do' fa> <fa do' fa> <la do fa> <la do fa> <la do fa> <la do fa> 
    <lab do fa> <lab do fa> <lab do fa> <lab do fa> <sol si re fa> <sol si re fa> <sol si re fa> <sol si re fa> 
    <sol do mi>\> <sol do mi> <sol do mi> <sol do mi> <sold do mi> <sold do mi> <sold do mi> <sold do mi>\!
    <la do mi>\p <la do mi> <la do mi> <la do mi> <do mi si'> <do mi si'> <do mi si'> <do mi si'>
    <do mi la> <do mi la> <do mi la> <do mi la> <do sol' la> <do sol' la> <do sol' la> <do sol' la>
    <do fa la>\< <do fa la> <do fa la> <do fa la> <fa la mi'> <fa la mi'> <fa la mi'><fa la mi'>\!
    <fa la re> <fa la re> <fa la re> <fa la re> <fa do' re> <fa do' re> <fa do' re> <fa do' re> 
    <fa si re>_\markup {\italic "cresc." } <fa si re> <fa si re> <fa si re> <si re la'> <si re la'> <si re la'> <si re la'>
    <sib re sol> <sib re sol> <sib re sol> <sib re sol>
    \override TextSpanner #'(bound-details left text) = \markup {\italic ritard.}
    <la dod fa> \startTextSpan <la dod fa> <la dod fa> <la dod fa>
    <lab do! fa>\cr <lab do fa> <lab do fa> <lab do fa> <sol si mi> <sol si mi> <sol si mi> <fa si re>
    \stopTextSpan
    <mi sol do>->\f <mi sol do> <mi sol do> <mi sol do> <re sold si>-> <re sold si> <re sold si> <re sold si> 
    <do fa la>-> <do fa la> <do fa la> <do fa la> <si re fa sol>-> <si re fa sol> <si re fa sol> <si re fa sol> 
    % coda

    do <sol do>-> <sol do> <sol do> <sol do> <la do> <la do> <la do>
    <la do>-> <do sol'>\< <do sol'> <do sol'> <do sol'> <do do'> <do do'> <do do'>\!
    <do do'>-> <do sol' do> <do sol' do> <do sol' do> <do sol' do> <do la' do> <do la' do> <do la' do>
    <do la' do>-> <do sol'> <do mi> do s2 s4
    \bar "|."
}


% definition main gauche
mg =  \relative do, \simultaneous { % 1 mesure par ligne
\clef "bass"
    {
      \global
    r2 <do do'>
    <la la'> <fa fa'>
    <re re'> <sol sol'>
    <do do'> <si si'>  
    <la la'>  <sol sol'>
    <fa fa'>  <mi mi'>
    <re re'>  <do do'>  
    <si' si'> <la la'>
    <sol sol'>1 ~
    <sol sol'>2 <la la'>
    <lad lad'> <si si'>
    <do do'> <mi mi'>\f
    <la, la'> <mi' mi'>\f
    <la, la'> <fad' fad'>\f
    <si, si'> <fad' fad'>
    <si, si'> <sol' sol'>\f
    <sol, sol'> <la la'>
    <lad lad'> <si si'>

    <do do'> <do, do'>
    <la' la'> <fa fa'>
    <re re'> <sol sol'>
    <do do'> <si si'> 
    <la la'> <sol sol'>
    <fa fa'> <mi mi'>
    <re re'> <do do'>
    <si' si'> <la la'>
    <sol sol'> <fa fa'>
    <mi mi'> <la la'>
    <re re'> <sol sol'>
    <do, do'> <mi mi'>
    <fa fa'> <sol sol'>
    % coda
    \voiceTwo
    do,1 ~ <do fa do'>8 s4. s2 s8 sol'4. ~ sol2 ~ sol <sol do>8 r <sol si> r
    <do, sol' do>
    r
    \bar "|."

}
\relative do {
    s1*31
    \voiceOne
    r8 <mi, do'> <mi do'> <mi do'> <mi do'> <fa do'> <fa do'> <fa do'>
    s8 <sol mi'> <sol mi'> <sol mi'> <sol mi'> <la fa'> <la fa'> <la fa'> 
    <la fa'> <mi' sol>[ <mi sol> <mi sol>] <mi sol> <fa la> <fa la> <fa la> 
    <fa la> <mi sol> <mi sol> <do mi> <mi sol>^\f r <re sol>^\f r
    <mi sol>^\f 
    r
    \bar "|."
}
}

\score {
    \context StaffGroup <<
    \context Staff = "chant" { \chant }
    \new Lyrics \lyricsto "chant" \text
    \context PianoStaff  <<
	\context Staff = "md" { \md }
	\context Staff = "mg" { \mg }
    >>
>>
  \midi {
    \tempo 4 = 120
    }


   \layout { }
}

