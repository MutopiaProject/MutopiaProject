\version "2.16.0"

Tempo = \tempo "Allegro con brio"
Time = \time 4/4
Key =  { \key es \major }
End = { \skip 1*314 \bar "|." }

ffsempremarkup = \markup { \normal-text \italic sempre \dynamic ff }
ffsempre = #(make-dynamic-script ffsempremarkup)

global =  {
	\Tempo
	\Time
	\Key
	\End
}
