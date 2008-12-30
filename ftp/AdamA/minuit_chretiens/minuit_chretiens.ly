% -*- coding: utf-8 -*-
\version "2.6.3"
\include "italiano.ly"

% version 1. Lilypond 2.6.3 ne permet pas une parfaite gestion de la position
% des phrasés (slurs). Cette version est publiée dans l'attente d'une amélioration 
% de cette gestion. La présente partition sera alors révisée.

% Déplace la liaison en bloc de (x . y)
%\once \override Slur  #'extra-offset = #'(0 . 6)

% Placer où l'on veut une annotation
%\once \override TextScript #'extra-offset = #'(0.0 . +5.5)
%_\markup{\dynamic sf \italic dim.}



\header {
  title = "Minuit Chrétiens"
  subtitle = "Cantique de Noël"
  subsubtitle =""
  composer = "Adolphe Adam (1803-1856)"
  poet = "Placide Clappeau (1808-1877)"
  instrument = "Voix et Piano"
  % date de composition = "décembre 1847"
  source = "Ed. Léon Grus"
  copyright = "Domaine public - Public Domain"
  enteredby = "Gérard Gréco"
  maintainer = "Gérard Gréco"
  maintainerEmail = ""
  lastupdated = "2005-11-29"
  
  mutopiacomposer = "AdamA"
  mutopiainstrument = "Voice and Piano"
  style = "Hymn"
  license = "Public Domain"
  
  footer = "Mutopia-2005/12/09-640"
  tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

hpuI = \once \override Staff.Hairpin #'extra-offset = #'(0 . +1)
hpuII = \once \override Staff.Hairpin #'extra-offset = #'(0 . +2)
hpdI = \once \override Staff.Hairpin #'extra-offset = #'(0 . -1)
hpdII = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2)
hpdIIa = \once \override Staff.Hairpin #'extra-offset = #'(0 . -2.5)
cresc = \markup { \italic "cresc." }
dim = \markup { \italic "dim." }

% Macros

pd = \change Staff = dessus
pb = \change Staff = basse

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%  Bogen verschieben  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#(use-modules (ice-9 optargs))
#(define*-public (mus:make-context context element #:key id (operations '()))
  "Base function for building ContextSpeccedMusic objects."
  (apply make-music (append (list 'ContextSpeccedMusic
                                  'property-operations operations
                                  'context-type context
                                  'element element)
                            (if id (list 'context-id id) '()))))
#(define*-public (mus:override context layout property val #:optional once)
  "Layout property override.
 \once\override Voice.Fingering #'padding = #3
 <=>
 (mus:override 'Voice 'Fingering 'padding 3 #t)"
  (mus:make-context context (make-music 'OverrideProperty
                                        'once once
                                        'grob-property property
                                        'grob-value val
                                        'symbol layout)))
#(define* (Bogen dx #:optional once)
  (ly:export (mus:override 'Bottom 'Slur 'excenticity (cons dx) once)))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


zza = \times 2/3 {\stemUp  \pb  mi8 ([ \pd do' \pb sol \pd mi' do\pb  sol ]) }
zzb = \times 2/3 {\stemUp \pb fa8 ([ \pd do' \pb la \pd fa' do \pb la ]) }
zzc = \times 2/3 {\stemUp \pb fa8 ([ \pd si \pb sol \pd re' si \pb sol ]) }
zzd = \times 2/3 {\stemUp \pb mi8 ([ lad8 sol8 \pd mi'8 \pb lad,8 sol8 ]) }
zze = \times 2/3 {\stemUp \pb mi8 ([ \pd si'8 \pb sol8 \pd mi'8 si8 \pb sol8 ]) }
zzf = \times 2/3 {\stemUp \pb fad8 ([ \pd si8 \pb la8 \pd re8 \pb si8 la8 ]) }
zzg = << { \pb \override Stem #'transparent = ##t mi2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t mi8 ([ \pd do'8  \pb la8 \pd mi'8 do8 \pb la8 ]) } >>
zzh = << { \pb \override Stem #'transparent = ##t re2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t re8 ([ \pd si'8  \pb sol8 \pd mi'8 si8 \pb sol8 ]) } >>  
zzi = << { \pb \override Stem #'transparent = ##t fa2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t fa8 ([ \pd re'8  \pb la8 \pd fa'8 re8 \pb la8 ]) } >> 
zzj = << { \pb \override Stem #'transparent = ##t mi2 } \\  \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t mi8 ([ \pd si'8 \pb sol8 \pd mi'8 si8 \pb sol8 ]) } >>
zzk = << { \pb \override Stem #'transparent = ##t mi2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t mi8 ([ \pd do'8  \pb la8 \pd re8 do8 \pb la8 ]) } >>zzl = << { \pb \override Stem #'transparent = ##t fa2 } \\ \times 2/3 {\stemUp \pb  \once \override NoteHead #'transparent = ##t fa8 ([ \pd si \pb sol \pd re' si \pb sol ]) } >>
zzm = << { \pb \override Stem #'transparent = ##t sol2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t sol8 ([ \pd mi'8 do8 sol'8 mi8 do8 ]) } >>
zzn = << { \pb \override Stem #'transparent = ##t mi2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t mi8 ([ \pd do'8 \pb sol8 \pd mi'8 do8 \pb sol8 ]) } >>
zzo = << { \pb \override Stem #'transparent = ##t re2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t re8 ([ \pd si'8 \pb sol8 \pd re'8 si8 \pb sol8 ]) } >>
zzp = << { \pb \override Stem #'transparent = ##t fa,2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t fa8 ([ \pd re'8  \pb la8 \pd fa'8 re8 \pb la8 ]) } >> 
zzq = << { \pb \override Stem #'transparent = ##t re2 } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t re8 ([ \pd si'8  \pb sol8 \pd re'8 si8 \pb sol8 ]) } >> 

melodie = \relative do' {
  \clef treble 
  \key do\major 
  \time 4/4
  \stemUp
  << \override MultiMeasureRest #'staff-position = #2 R1 \\ s4^\markup{"" \raise #2.0 "Andante maestoso"} s4 s2>>
  | r4 r8. mi16 mi4 ~ mi8. sol16 
  | sol4 ~ sol8. sol16 la8. la16 fa8. la16 
  | \stemDown do2 \stemUp sol8 r16 sol16 mi8. re16 
  | do4 mi8. fa16 sol4 fa8. re16 
  | do2 r2 
  | r2 mi4 mi8. mi16 
  | sol4 ~ sol8. sol16 la8. la16 fa8. la16 
  | \stemDown do2 \stemUp sol8 r16 sol16 fad8. mi16 
  | si'4 sol8. la16 \stemDown si4 \acciaccatura re8 do8. si16 
  | \stemUp mi,2 r4 r8. \once \override TextScript #'extra-offset = #'(-3.0 . 0.0) sol16^\markup{\dynamic pp}
  | sol4 la4 re,4 sol4 
  | la8. sol16 \stemDown do8. \stemUp mi,16 la4 sol8 r16 sol16 
  | sol4 la4 re,4 sol4  
  | la8. sol16 \stemDown do8. \stemUp mi,16 sol4 ~ sol8 r8 
  | \stemDown do2^\markup{\dynamic f} ~ do4 \stemUp si8. la16 
  | \stemDown si2 ~ si4 ~ si8. si16 
  | re2 ~ re8. \stemUp la16 la8. la16 
  | \stemDown do2 do4 r8. do16 
  | mi2 ( re4..) \stemUp sol,16 
  | \stemDown do2 ~ do4 (si8.) la16 
  | \stemUp sol2 ~ sol8. sol16 \acciaccatura si8 la8. sol16 
  | sol2. r8. \stemDown do16 
  | re2 ~ re4.. \stemUp sol,16 
  | \stemDown mi'2 ~ mi4 re4 
  | do2 si4 do8. re16 
  | do2 r2 
  | R1 R1 R1 R1 R1
  \bar "|."
}

chant = \lyricmode {
  \skip 1 \skip 4 \skip 8. 
  Mi16 --  nuit4 __ \skip 8. Chré16 -- tiens4 __ \skip 8. C'est16 l'heu8. -- re16 so8. -- len16 -- nel2 -- le8 \skip 16 Où16 l'hom8. -- me16 Dieu4 des8. --  cen16 -- dit4 jus8. -- qu'à 16 nous.2
  \skip 2 \skip 2 
  Pour4 ef8. -- fa16 -- cer4 __ \skip 8. la16 tache8. o16 -- ri8. -- gi16 -- nel2 -- le8 \skip 16 Et16 de8. son16 Père4 ar8. -- rê16 -- ter4 le8. cou16 -- rroux.2 
  \skip 4 \skip 8. 
  Le16 monde4 en4 -- tier4 tres4 -- sail8. -- le16 d'es8. -- pé16 ran4 -- ce8 \skip 16 
  À16 cet4 -- te4 nuit4 qui4 lui8. donne16 un8. sau16 -- veur4 __ \skip 8 \skip 8
  Peuple2. à 8. ge16 -- noux2 __ \skip4 \skip8. 
  A16 -- tends2 __ \skip8. ta16 dé8.-- li16 vran2 -- ce4 
  \skip 8. 
  No16 -- ël2 __ \skip 4.. 
  No16 ël2 __ \skip 4 \skip 8. 
  voi16 -- ci2 __ \skip 8. le16 Ré8.-- demp16 -- teur2. 
  \skip 8. 
  No16 -- ël2 __ \skip 4.. No16 -- ël2 __ \skip 4 
  voi4 -- ci2 le4 Ré8. -- demp16 -- teur.2
  \skip 1 \skip 1 \skip 1 \skip 1
}	


dessus = \relative do {
 % \override TupletBracket #'number-visibility = ##f
  \repeat unfold 2 {
    \zza \zza
  }
  %3
  \zza \zzb
  %4
  \zza \zza
  %5
  \zza \zzc
  %6
  \repeat unfold 2 {
    \zza \zza
  }
  %8
  \zza \zzb
  %9
  \zza \zzd
  %10
  \zze \zzf
  %11
  \zze \times 2/3 {\stemUp \pb  mi8 ([ \pd \once \override TextScript #'extra-offset = #'(-2.0 . 0.0) si'8^\markup{\dynamic pp} \pb sol8 \pd mi'8 si8 \pb sol8 ]) }
  %12
  \zzc \zzc
  %13
  \zza \zza 
  %14
  \zzc \zzc
  %15
  \zza \zza
  %16
  \zzg \zzg
  %17
  \zzj \zzj
  %18 
  \zzi \zzi
  %19
  \zzg \zzk
  %20
  \zzn \zzo
  %21
  \zzm \zzp
  %22 
  \zzn \zzl 
  %23
  << { \pb \override Stem #'transparent = ##t \once \override TextScript #'extra-offset = #'(0.0 . +10.5) mi2^\markup{\italic {cresc.}} } \\ \times 2/3 {\stemUp \pb \once \override NoteHead #'transparent = ##t mi8 ([ \pd do'8 \pb sol8 \pd mi'8 do8 \pb sol8 ]) } >> 
  \zzn
  %24
  \zzq \zzq
  %25
  \zzm \zzp
  %n cf. § 5.10.6 pour les hampes de notes sur deux portées.
  \zzn << \pb \stemUp  \once \override Stem #`length = #22 fa4 \once \override Stem #`flag-style = #`no-flag sol4 \\ \pd \stemUp si4  re4  >> <<\pd si'4\rest \\ \pb s4 >> 
  % XX
  << \pb \stemUp \once \override Stem #`length = #22 <mi,, sol>4 \\ \pd \stemUp do'4 >> r4 <do sol' do>4 ~ <do sol' do>8. [ <do sol' si>16]
  % XXX
  <do fa si>2 <re fa la>4 <re fa la>8. [ <re fa la>16 ]
  %
  \stemUp <fa re' fa>2 <mi sol do mi>4 <fa la re>4
  %
  <mi sol do>2 << {fa2} { \appoggiatura {la16 [si16 do16]} << { do2 \startTrillSpan} {s4. \grace { do16 [ \stopTrillSpan re16]}} >> } >>
  % 
  <mi, do'>2 <mi do'>2
  %
  <mi do'>1
}
	
basse = \relative do, {
  \clef bass
  %1
  <do sol' do>1
  %2
  <do sol' do>1
  %3
  \stemDown <do sol' do>2
  <fa do'>2
  %4
  <do sol' do>2
  <do do'>2
  %5
  <sol sol'>1
  %6
  <do sol' do>1
  %7
  <do sol' do>1
  %8
  <do mi sol do>2
  <fa do'>2
  %9
  <do sol' do>2
  <do mi do'>2
  %10
  <si si'>2
  <si si'>2
  %11
  mi2 r2
  %12
  << {\stemDown \slurDown si'4 (sol4 si4 sol4)} \\ si,1 >>
  %13
  << {\stemDown \slurDown do'4 (sol4 do4 sol4)} \\ do,1 >>
  %14
  << {\stemDown \slurDown si'4 (sol4 si4 sol4)} \\ si,1 >>
  %15
  << {\stemDown \slurDown do'4 (sol4 do4) r4} \\ {do,2 ~ do4 s4} >>
  %16
  \appoggiatura{ \once \override TextScript #'extra-offset = #'(0.0 . +4.0) la16^\markup{\dynamic f}  [ mi'16]} <la, la'>1
  %17
  \appoggiatura{mi16 [ si'16]} <mi, mi'>1
  %18
  \appoggiatura{re16 [ la'16]} <re, re'>1
  %19
  \appoggiatura{la'16 [ mi'16]} <la, la'>1
  %20
  \stemDown <sol sol'>2 <fa fa'>2
  %21
  <mi mi'>2 <fa fa'>2
  %22
  <sol sol'>2 <sol sol'>2
  %23
  \dynamicDown <do, do'>4 <mi mi'>4 <sol sol'>4 <do do'>4
  %24
  <sol sol'>2 <fa fa'>2
  %25
  <mi mi'>2 <fa fa'>2
  %26
  <sol sol'>2 <sol sol'>4 \once \override TextScript #'extra-offset = #'(0.0 . +2.5) r4^\markup{\italic{rall.}}
  %27
  \times 2/3 {\stemDown do8 ([ mi8 sol8 do8 mi8 do]) } << { \pb \stemDown \once \override Stem #'transparent = ##t mi,2 } \\ \times 2/3 {\stemDown \once \override NoteHead #'transparent = ##t \slurUp mi8 ([ sol8 do8 mi8 do8 sol8 ]) } >> 
  %28
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t fa2 } \\ \times 2/3 {\stemUp  \slurDown fa8 ([ la8 do8 fa8 do8 la8 ]) } >> 
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t re,2 } \\ \times 2/3 {\stemUp  \slurDown re8 ([ fa8 la8 re8 la8 fa8 ]) } >>
  %29 
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t si,2 } \\ \times 2/3 {\stemUp  \slurDown si8 ([ re8 sol8 si8 sol8 re8 ]) } >> 
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t do4 } \\ \times 2/3 {\stemUp do8 [ sol'8 do8 ] } >> 
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t fa,,4 } \\ \times 2/3 {\stemUp  fa8 [ re'8 fa8 ] } >>
  %30
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t sol,2 } \\ \times 2/3 {\stemUp  \slurDown sol8 ([ do8 mi8 sol8 mi8 do8 ]) } >> 
  << { \pb \stemDown \override Staff.NoteCollision  #'merge-differently-headed = ##t sol2 } \\ \times 2/3 {\stemUp  \slurDown sol8 ([ re'8 fa8 sol8 fa8 re8 ]) } >>
  %31
  \times 2/3 {\stemDown \slurUp do8 ([ mi8 sol8 do8 mi8 sol8]) } 
  \times 2/3 {\stemDown \slurUp do8 ([ sol8 mi8 do8 sol8 mi8]) }
  %32
  do1
}


\score {
  <<
    \context Voice = melodie {
      \override Score.InstrumentName #'space-alist = #'((left-edge extra-space . 3.0))
      \set Staff.instrument = #"CHANT."
      \autoBeamOff
      \melodie
    }
    \context Lyrics \chant
\override VerticalAlignment #'forced-distance = #3
    \context PianoStaff 
    <<
      \set PianoStaff.instrument = #"PIANO."
      
      \context Staff = "dessus" \dessus
      
      \context Staff = "basse" \basse
      
    >>
  >>
  \layout { 
    \context { }
  }
  \midi { \tempo 4 = 112 }
}

