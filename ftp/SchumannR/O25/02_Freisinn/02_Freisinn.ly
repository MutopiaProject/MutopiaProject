\language "deutsch"


\version "2.18.2"


\header {
  title = "Freisinn"
  poet = "Johann Wolfgang von Goethe"
  piece = "Aus dem Westöstlichen Divan"
  composer = "Robert Schumann"
  opus = "Op. 25, No. 2"
  mutopiacomposer = "SchumannR"
  mutopiainstrument = "Voice and piano"
  date = "1840"
  source = "Robert Schumanns Werke, Serie XIII:
            Für eine Singstimme, mit Begleitung des Pianoforte.
            Leipzig: Breitkopf & Härtel, 1881-1912. Plate R.S. 120."
  moreInfo = "http://imslp.org/wiki/Myrthen,_Op.25_(Schumann,_Robert)"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Achim Kern"
  maintainerEmail = "achim(dot)kern(at)birkenweg4.de"
  lastupdated = "21.06.2015"

 mutopiasource = "Robert Schumanns Werke, Serie XIII: Für eine Singstimme, mit Begleitung des Pianoforte. Leipzig: Breitkopf & Härtel, 1881-1912. Plate R.S. 120."
 mutopiastyle = "Classical"
 mutopialicense = "Public Domain"

 footer = "Mutopia-2015/08/21-2046"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

#(set-global-staff-size 18)
Barline = |
EndMovementBarline = \bar "|."

% The music follows

text = \lyricmode {
  Lasst mich
  nur __ auf mei -- nem Sat -- tel
  gel -- ten!
  Bleibt in eu -- ren Hüt -- ten, eu -- ren
  Zel -- ten! Und ich
  rei -- te froh in al -- le
  Fer -- ne,
  ü -- ber
  mei -- ner Mü -- tze nur die
  Ster -- ne.
  Er hat euch die Ge --
  stir -- ne ge -- setzt als
  Lei -- ter zu Land und
  See;
  da -- mit ihr euch da --
  ran __ er -- götzt,
  stets blick -- end in die
  Höh'.
  Lasst mich nur __ auf mei -- nem Sat -- tel
  gel -- ten!
  Bleibt in eu -- ren Hüt -- ten, eu -- ren
  Zel -- ten! Und ich
  rei -- te froh in al -- le
  Fer -- ne,
  ü -- ber
  mei -- ner Mü -- tze nur die
  Ster -- ne.

}
Melody =  {
  \partial 4 r4\Barline
  r1\Barline
  r2 r4 g'8.\f f'16\Barline
  f'4( as'8.) g'16 g'8 g' c''8. b'16\Barline
  b'4.( as'8) g'4 r\Barline
  %5
  r1\Barline
  r2 r4 g'8. f'16\Barline
  f'4( a'8.) b'16 \< b'8 b' b' c'' \!\Barline
  d''4.( c''8) b'4 b'8. b'16\Barline
  c''4. g'8 as'?8. as'16 g'8. f'16\Barline
  %10
  b'2 g'4 r\Barline
  r2 r4 g'8. g'16\Barline
  as'4. b'8 c'' c'' as' f'\Barline
  b'2 -> es'4 r \bar "||"
  r4 g' \p g'8 g' g' c''\Barline
  %15
  c''4  h'8 a' h'4 g'\Barline
  c'' d''8 d'' es''4. d''8\Barline
  c''2 r\Barline
  r4 r8 g' g' g' g' c''\Barline
  c''4( h'8) a' h'4 r\Barline
  %20
  c'' -> d''8 d'' es''4. d''8\Barline
  c''4 r r2\Barline
  r1\Barline
  r2 r4 g'8. \f f'16\Barline
  f'4( as'8.) g'16 g'8 g' c''8. b'16\Barline
  %25
  b'4.( as'8) g'4 r\Barline
  r1\Barline
  r2 r4 g'8. f'16\Barline
  f'4( a'8.) b'16 b'8 b' b' c''\Barline
  d''4.( c''8) b'4 b'8. b'16\Barline
  %30
  c''4. g'8 as'8. as'16 g'8. f'16\Barline
  b'2 g'4 r\Barline
  r2 r4 g'8. g'16\Barline
  as'4. b'8 c'' c'' as' f'\Barline
  b'2 -> es'4 \EndMovementBarline
}


PianoRH =  {
  \partial 4 <b es' g'>8[ r16 <b d' f'>]\Barline
  <b d' f'>4 <b d' as'>8[ r16 <b es' g'>] <b es' g'>4 <es' as' c''>8[ r16 <es' b'>]\Barline
  <<{\stemUp \slurUp b'4.\( as'8 <es' g'>4\)} \\ {es'4 d'}>>\oneVoice <b es' g'>8[ r16 <b d' f'>]\Barline
  <b d' f'>4 <b d' as'>8[ r16 <b es' g'>] <b es' g'>4 <es' as' c''>8[ r16 <es' b'>]\Barline
  <<{\stemUp \slurUp b'4.( as'8 g'4)} \\ {es'4 d' es'}>>\oneVoice <b es' g'>8[ r16 <b f'>]\Barline
  %5
  <b f'>4 <es' a'>8[ r16 <f' b'>] <f' b'>4 <g' b' c''>8[ r16 <f' b' d''>]\Barline
  <<{<d'' b'>4.^>( c''8 b')} \\{f'4 es' d'} >> <b es' g'>8[ r16 <b f'>]\Barline
  <b f'>4 <es' a'>8[ r16 <f' b'>] <f' b'>4 <g' b'>8[ r16 <g' b' c''>]\Barline
  <<{<b' d''>4.( c''8 b'4)} \\ {f'4 es' d'}>> \oneVoice b'8[ r16 b']\Barline
  <<{\stemUp c''2( c''8)} \\ {\stemDown r4 <g' b'>8[ h'16\rest <g' b'>] <f' as'?>8}>> \oneVoice r16 as' g'8[ r16 f']\Barline
  %10
  <<{b'2( b'4)} \\ {\stemDown r4 <f' as'>8[ h'16\rest <f' as'>16] <es' g'>4}>>  <b es' g'>8[ r16 <b es' g'>]\Barline
  <c' es' as'>4 <des' es' g' b'> <c' es' as' c''> <b es' g'>8[ r16 <b es' g'>]\Barline
  <c' es' as'>4 <des' es' g' b'> <c' es' as' c''>2\Barline
  <f as b d'?>2( <g b es'>4) <b es' g'>\staccato ( \Barline
  <h f' g'>\staccato <c' es' g'>\staccato <d' f' g'>\staccato <c' es' g'>\staccato ) \Barline
  %15
  <<{g'2( g'4) g'} \\ {\stemDown <c' es'>4 <h d'>8 <a c'> <h d'>4 <h d'>}>>  \Barline
  <es' g' c''> <f' as' c'' d''> <g' c'' es''> <f' h' d''>\Barline
  <es' g' c''> <f' as'>8.( b'16) <es' g' c''>4 <c' es'>8.( f'16)\Barline
  <b d' g'>4 <b d' g'>\staccato( <c' es' g'>\staccato <c' es' g'>\staccato)\Barline
  <<{g'2( g'4) g'} \\ {\stemDown <c' es'>4 <h d'>8 <a c'> <h d'>4 <h d'>}>>  \Barline
  %20							      
  <es' g' c''> <f' as' c'' d''> <<{es''4.( d''8)} \\ {\stemDown <g' c''>4 <f' h'>}>>\Barline
  <es' c''>4 b?8[ r16 es'] es'4 <b es' g'>8[ r16 <b d' f'>]\Barline
  <b d' f'>4^> <b d' as'>8[ r16 <b es' g'>] <b es' g'>4 <es' as' c''>8[ r16 <es' b'>]\Barline
  <<{\stemUp \slurUp b'4.( as'8 g'4)} \\ {\stemDown es'4 d' es'}>>\oneVoice <b es' g'>8[ r16 <b d' f'>]\Barline
  <b d' f'>4 <b d' as'>8[ r16 <b es' g'>] <b es' g'>4 <es' as' c''>8[ r16 <es' b'>]\Barline
  %25										   
  <<{b'4.^>( as'8) g'4} \\ {es'4 d' es'}>> <b es' g'>8[ r16 <b f'>]\Barline
  <b f'>4 <es' a'>8[ r16 <f' b'>] <f' b'>4 <g' b' c''>8[ r16 <f' b' d''>]\Barline
  <<{<b' d''>4.^>( c''8 b'4)} \\ {f'4 es' d'}>> <b es' g'>8[ r16 <b f'>]\Barline
  <b f'>4 <es' a'>8[ r16 <f' b'>] <f' b'>4 <g' b'>8[ r16 <g' b' c''>]\Barline
  <<{<b' d''>4.( c''8 b'4)} \\ {f'4 es' d'}>> \oneVoice b'8[ r16 b']\Barline
  %30							    
  <<{\slurUp c''2( c''8)} \\ {\stemDown r4 <g' b'>8[ r16 <g' b'>] <f' as'?>8}>>\oneVoice  r16 as' g'8[ r16 f']\Barline
  <<{b'2( b'4)} \\ {r4 <f' as'>8[ h'16\rest <f' as'>] <es' g'>4}>> <b es' g'>8[ r16 <b es' g'>]\Barline
  <c' es' as'>4 <des' es' g' b'> <c' es' as' c''> <b es' g'>8[ r16 <b es' g'>]\Barline
  <c' es' as'>4 <des' es' g' b'> <c' es' as' c''>2\Barline
  <<{\stemUp \slurDown <f as d'?>2( <g es'>4)} \\ {\stemDown \once \override NoteColumn.force-hshift = #1.5  \slurUp b2( \stemUp b4)}>> \EndMovementBarline
}


PianoLH = {
  \oneVoice									    
  \partial 4 es8[ r16 b,]\Barline
  b,4  <f as>8[ r16 <es g>] <es g>4 <as c'>8[ r16 <g b>]\Barline
  <<{b2( b4)} \\  {g4 f es}>> <es g>8[ r16 <b, f>]\Barline
  <b, f>4 <f as>8[ r16 <es g>] <es g>4 <as c'>8[ r16 <g b>]\Barline
  <<{b2( b4)} \\ {g4 f es}>> <es g>8[  r16 <d f>]\Barline
  %5										   
  <d f>4 <c f>8[ r16 <d b>] <d b>4 <es b>8[ r16 <f b>]\Barline
  <f b>4 <f, a> <b, b> <es g>8[ r16 <d f>]\Barline
  <d f>4 <c f>8[ r16 <d b>] <d b>4 <es b>8[ r16 <es b>]\Barline
  <f b>4 <f, a> <b, b> b8[ r16 b]\Barline
  c'4 <e c'>8[ r16 <e c'>] <f c'>8 r16 as g8[ r16 f]\Barline
  %10					    
  b4 <d b>8[ r16 <d b>] <es b>4 <des es>8[ \f r16 <des es>]\Barline
  <c es>4 <b, es> <as, es> <des, des>8[ \f r16 <des, des>]\Barline
  <c, c>4 <b,, b,> <as,, as,>2\Barline
  <b,, b,>(^> <es, b,>4) <es g>\staccato(\Barline
  <d g>\staccato <c g>\staccato <h, g>\staccato <c g>\staccato ) \Barline
  %15					
  <g, g>2( <g, g>4) <f g>\Barline
  <es g c'> <f c' d'> <g c' es'> <g h d'>\Barline
  %17+18		
  <c g c'> <<{c'2 g4( g)} \\ {f4( c) c( g,)}>>
  %Rest 18					
  <f g>\staccato ( <es g>\staccato <c g>\staccato )\Barline
  << {\stemUp \slurUp g,2~ g,4}  {\stemUp g2~ g4)}>> \oneVoice	<f g>\Barline
  %20
  <es g c'> <f c' d'> <<{es'4.( d'8)} \\ {<g c'>4 <g h>}>>\Barline
  <c c'>4 <b,,? b,?>8[ \f r16 <es, es>] <es, es>4 <es g>8[ r16 <b, f>]\Barline
  <b, f>4 <f as>8[ r16 <es g>] <es g>4 <as c'>8[ r16 <g b>]\Barline
  <<{b2( b4)} \\ {g4 f es}>> <es g>8[ r16 <b, f>]\Barline
  <b, f>4 <f as>8[ r16 <es g>] <es g>4 <as c'>8[ r16 <g b>]\Barline
  %25
  <<{b2( b4)} \\ {g4 f es}>> <es g>8[  r16 <d f>]\Barline
  <d f>4 <c f>8[ r16 <d b>] <d b>4 <es b>8[ r16 <f b>]\Barline
  <f b>4 <f, a> <b, b> <es g>8[ r16 <d f>]\Barline
  <d f>4 <c f>8[ r16 <d b>] <d b>4 <es b>8[ r16 <es b>]\Barline
  <f b>4 <f, a> <b, b> b8[ r16 b]\Barline
  %30
  c'4 <e c'>8[ r16 <e c'>] <f c'>8 r16 as g8[ r16 f]\Barline
  b4 <d b>8[ r16 <d b>] <c b>4 <des es>8[  r16 <des es>]\Barline
  <c es>4 <b, es> <as, es> <des, des>8[  r16 <des, des>]\Barline
  <c, c>4 <b,, b,> <as,, as,>2\Barline
  <<{\stemUp \slurDown b,,2( ->es,4)} \\ {\stemUp \slurUp b,2( b,4)}>> \EndMovementBarline
}


DynamicsOne = {
  \partial 4 s4 \f \Barline
  s1        
  s1
  s1
  s2 s4 s8 \f s16 s16
  %5
  s4 s8 \< s16 s s4 s8 s16 s16 \!
  s1
  s1        
  s1        
  s1        
  %10
  s4 s4 s4 s8 s16 s16 \<
  s4 s4 \! s2
  s4 \< s4 s2 \!
  s2 s4 s4 \p \<
  s4 s4 \! s4 \> s4 \!
  %15
  s1
  s4 \< s4 \! s4 \> s4 
  s8 s8 \! s8. s16 s4  s4
  s1
  s1
  %20
  s4 \< s4 s4 \! s4
  s1
  s1
  s1
  s1
  %25
  s1
  s4 s8 \< s16 s16 s4 s8 s16 s16 \!
  s1
  s1
  s1
  %30
  s1
  s1
  s4 \< s4 s4 \! s4
  s4 \< s4 s2 \!
}

\score {
  << 
    \new Voice = "mel" {
      \set Score.tempoHideNote = ##t
      \tempo "Frisch" 4=100
      \time 4/4 
      \key es \major
      \clef treble 
      \autoBeamOff
      \dynamicUp
      \Melody
    }
    \new Lyrics \lyricsto mel \text
    \new PianoStaff <<
      \new Staff = "RightHand" {
        \time 4/4 
        \key es \major
        \clef treble
        \stemUp
        \slurDown
        \PianoRH
      }
      \new Dynamics = "DynamicsOne" \DynamicsOne
      \new Staff = "LeftHand" {
	\time 4/4
	\key es \major
	\clef bass
	\stemDown
	\slurUp
	\dynamicUp
	\PianoLH
      }
    >>
  >>

  \layout {
  }
  \header {
    title = "Untitled"
  }
}



\score {
  <<
    \new Staff \with {
      midiInstrument = #"flute"
      midiMinimumVolume = #0.5
      midiMaximumVolume = #1.0
    }      
      \tempo "Frisch" 4=100
      \Melody
    \new Staff \with {
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.5
    } <<
      \DynamicsOne
      \PianoRH
      \PianoLH
    >>
  >>
  \midi {}
}
					   

\paper {
  page-count = #2
  top-margin = 2\cm
  %bottom-margin = 3\cm
  ragged-last-bottom = ##f
}

