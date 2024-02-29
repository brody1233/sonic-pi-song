

define :strangernotes do
  play :e2
  sleep 0.5
  play :e3
  sleep 0.5
  play :g2
  sleep 0.5
  play :b2
  sleep 0.5
  play :c3
  sleep 0.5
  play :d3
  sleep 0.5
  play :f2
  sleep 0.5
  play :e2
  sleep 0.5
end
live_loop :under do
  6.times do
    with_fx :flanger do
      sample :bass_hard_c, beat_stretch: 4, amp: 0.5
      sleep 4
    end
  end
  stop
end
sleep 4
live_loop :main do
  6.times do
    strangernotes
  end
  stop
end
sleep 8
live_loop :bass do
  4.times do
    use_synth :saw
    strangernotes
  end
  stop
end

live_loop :slower do
  4.times do
    use_synth :bass_foundation
    strangernotes
  end
  stop
  
end



