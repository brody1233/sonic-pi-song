live_loop :drum do
  32.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
  end
end
sleep 16
live_loop :voice do
  play :r
  sleep 1
  play :e5
  sleep 1
  play :d5
  sleep 0.5
  play :c5
  play 0.5
  play :b4
  sleep 1
  
  play :b4
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 1
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  
  play :b4
  sleep 1
  play :c5
  sleep 0.5
  play :b4
  sleep 1
  play :a4
  sleep 0.5
  play :g4
  sleep 0.5
  play :a4
  sleep 0.5
  
  play :b4, sustain: 4
  sleep 4
end
sleep 16
#bass
live_loop :bass do
  play :g2
  sleep 1.5
  play :g2
  sleep 1
  play :g2
  sleep 1
  play :g2
  sleep 0.5
  
  play :c3
  sleep 1.5
  play :c3
  sleep 1
  play :c3
  sleep 1
  play :c3
  sleep 0.5
  
  play :c3
  sleep 1.5
  play :c3
  sleep 1
  play :c3
  sleep 1
  play :c3
  sleep 0.5
  
  play :r
  sleep 4
end
