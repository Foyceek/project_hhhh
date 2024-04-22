### Project: Relay-Controlled Sound Synthesizer
Relay used:
![2-channel-relay_description](https://github.com/Foyceek/project_hhhh/assets/148572907/cfc454e1-d45e-40e1-861a-2a72c0d3ce87)
## Team members
František Hecl (responsible for sound synthetizer module code and testbench)

Ondřej Hrozek (responsible for general project idea and organization, clock switch code, schematic)

Lukáš Horák (responsible for top level code)

Petr Horáček (responsible for video editing)

## Theoretical description and explanation
We developed and implemented a sound synthesizer using a relay on the Nexys A7 FPGA board. Instead of generating audio signals directly, our system utilized a relay connected to a Pmod connector to produce audible sounds by managing the activation and deactivation of the relay switch. Users replay basic melodies by selecting the relay sequences. We integrated switches as controls for play, stop, and song navigation, while LEDs and a 7-segment display provide visualization of the melody.

## Hardware description of demo application
Just five switches are used as user inputs. The outputs are a seven segment display, LEDs to indicate the switch states and RGB LEDs to indicate playback state.

Implementation schematic: 
![image](https://github.com/Foyceek/project_hhhh/assets/165892683/6ae91ec7-e27f-44e8-b6d1-f733886b80a0)

## Software description
Put flowcharts/state diagrams of your algorithm(s) and direct links to source/testbench files in src and sim folders.

## Component(s) simulation
Write descriptive text and put simulation screenshots of your components.

## Instructions
1. Use switches 1 and 2 to select one of four melodies. The melody number shows on the display.
2. Use switches 12 and 13 to choose the playback speed.
3. A green LED shows when a melody is playing. A blue LED blinks when the melody restarts.
4. To stop playback, use switch 15. This changes the green LED to red.

## References
Nexys A7 Reference Manual: [nexys-a7_rm.pdf](https://github.com/Foyceek/project_hhhh/files/15051833/nexys-a7_rm.pdf)

