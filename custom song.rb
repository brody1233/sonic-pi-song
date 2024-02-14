

define :strangernotes do
  play :c2
  sleep 0.5
  play :e2
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :b2
  sleep 0.5
  play :g2
  sleep 0.5
  play :e2
  sleep 0.5
end

live_loop :main do
  strangernotes
end

live_loop :bass do
  use_synth :saw
  strangernotes
end

live_loop :slower do
  use_synth :bass_foundation
  strangernotes
end

