\version "1.5.66"

\include "header.ly"
\include "paper13.ly"
\include "MFOAllegroI.ly"

flautiStaff = \context Staff = flauti <
	\property Staff.midiInstrument = #"flute"
	\property Staff.instrument = #"  Flauti  "
	\property Staff.instr = #"  Fl.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \flautoI
		\context Thread=two \flautoII
>

oboiStaff = \context Staff = oboi <
	\property Staff.midiInstrument = #"oboe"
	\property Staff.instrument = #"   Oboi   "
	\property Staff.instr = #"  Ob.  "
	\context Voice=one \partcombine Voice
		\context Thread=one \oboeI
		\context Thread=two \oboeII
>

clarinettiStaff = \context Staff = clarinetti <
	\property Staff.midiInstrument = #"clarinet"
	\property Staff.instrument = #'(lines " Clarinetti " "  in B  ")
	\property Staff.instr = #"  Cl.  "
	\property Staff.transposing = #-2
	\notes { \key f \major }
	\context Voice=one \partcombine Voice
		\context Thread=one \clarinettibI
		\context Thread=two \clarinettibII
>

fagottiStaff =  \context Staff = fagotti <
	\property Staff.midiInstrument = #"bassoon"
	\property Staff.instrument = #"  Fagotti  "
	\property Staff.instr = #"  Fg.  "
	\clef "bass"
	\context Voice=one \partcombine Voice
		\context Thread=one \fagottoI
		\context Thread=two \fagottoII
>

corniStaff =  \context Staff = corni <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #'(lines "   Corni   " "   in Es.  ")
	\property Staff.instr = #" Co. "
	\property Staff.transposing = #3
	\notes { \key c \major }
		\context Voice=one \partcombine Voice
		\context Thread=one \corniesI
		\context Thread=two \corniesII
>

trombeStaff =  \context Staff = trombe <
	\context Staff=trombe {
		\property Staff.midiInstrument = #"trumpet"
		\property Staff.instrument = #'(lines "   Trombe   " "    in Es.   ")
		\property Staff.instr = #" Tbe. "
		\property Staff.transposing = #3
		\notes { \key c \major }
	}
	\context Voice=one \partcombine Voice
		\context Thread=one \trombeesI
		\context Thread=two \trombeesII
>

timpaniStaff =  \context Staff = timpani <
	\property Staff.midiInstrument = #"timpani"
	\property Staff.instrument = #'(lines " Timpani  " " in Es.B.")
	\property Staff.instr = #" Timp. "
	\clef "bass"
	\notes { \key c \major }
	\context Voice=timpani
	\timpani
>

tromboneStaff =  \context Staff = trombone <
	\context Staff=trombone {
		\property Staff.midiInstrument = #"trombone"
		\property Staff.instrument = #'(lines " Trombone Alto " "  e Tenore  ")
		\property Staff.instr = #" Trbi. "
		\clef "alto"
			}
	\context Voice=one \partcombine Voice
		\context Thread=one \trombonetenor
		\context Thread=two \trombonealto
>

trombonebassoStaff =  \context Staff = trombonebasso <
	\property Staff.midiInstrument = #"trombone"
	\property Staff.instrument = #" Trombone Basso  "
	\property Staff.instr = #" TrbiB. "
	\clef "bass"
	\context Voice=trombonebasso
	\trombonebasso
>

violinoIStaff =  \context Staff = violino1 <

	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"  Violino I  "
	\property Staff.instr = #"  Vl. I  "
	\context Voice=violinoi
	\violinoI
>

violinoIIStaff =  \context Staff = violino2 <
	\property Staff.midiInstrument = #"violin"
	\property Staff.instrument = #"   Violino II  "
	\property Staff.instr = #"  Vl. II  "
	\context Voice=violinoii
	\violinoII
>

violaStaff =  \context Staff = viola <

	\property Staff.midiInstrument = #"viola"
	\property Staff.instrument = #"    Viola   "
	\property Staff.instr = #"  Vla.  "
	\clef "alto"
	\context Voice=viola
	\viola
>

bassiGroup =  \context PianoStaff = bassi_group \notes <
	\context Staff=oneBassi {
		\property Staff.midiInstrument = #"cello"
		\property Staff.instrument = #" Violoncello e"
    		\property Staff.instr = #"  Vc.  "
		\clef "bass"
	}
	\context Staff=twoBassi {
		\property Staff.midiInstrument = #"contrabass"
		\property Staff.instrument = #" Contrabasso "
		\property Staff.instr = #"  Cb.  "
		\property Staff.transposing = #-12
	 	\clef "bass" 
	}
	\context Staff=oneBassi \partcombine Staff
		\context Voice=oneBassi \violoncello
		\context Voice=twoBassi \basso
>

 bassiGroup =  \context PianoStaff = bassi_group \notes <
	\context Staff=violoncelloStaff <
		\property Staff.midiInstrument = #"cello"
		\property Staff.instrument = #" Violoncello e"
    		\property Staff.instr = #"  Vc.  "
		\clef "bass"
		\violoncello
	>
	\context Staff=contrabassoStaff <
		\property Staff.midiInstrument = #"contrabass"
		\property Staff.instrument = #" Contrabasso   "
		\property Staff.instr = #"  Cb.  "
		\property Staff.transposing = #-12
	 	\clef "bass" 
		\basso
	>
>

windGroup =  \context StaffGroup = wind_group <
	\flautiStaff
	\oboiStaff
	\clarinettiStaff
	\fagottiStaff
>
brassGroup =  \context StaffGroup = brass_group <
	\corniStaff
	\trombeStaff
	\tromboneStaff
	\trombonebassoStaff
>
timpaniGroup =  \context StaffGroup = timpani_group <
	\timpaniStaff
>

stringGroup =  \context StaffGroup = string_group <
	\violinoIStaff
	\violinoIIStaff
	\violaStaff
>

\score {
<
  	\windGroup
	\brassGroup
	\timpaniGroup
	\stringGroup
	\bassiGroup
>
\paper {

indent = 20.\mm

\translator  {
		\OrchestralScoreContext

		soloText = #"I."
		soloIIText = #"II."
		
		BarNumber \override #'padding = #3
		RestCollision \override #'maximum-rest-count = #1
	}

}

\include "midiallegro.ly"
}
