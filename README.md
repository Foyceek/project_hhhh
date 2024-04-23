# Project: Relay-Controlled Sound Synthesizer
Relay used:

![2-channel-relay_description](https://github.com/Foyceek/project_hhhh/assets/148572907/cfc454e1-d45e-40e1-861a-2a72c0d3ce87)

Nexys Artix-7 FPGA board used:

![20240327_110112](https://github.com/Foyceek/project_hhhh/assets/148572907/ce0b5524-4485-4bec-ba52-5dd356e4e266)


## Team members
František Hecl (responsible for sound synthesizer module code and testbench, management of this repository)

Ondřej Hrozek (responsible for general project idea and organization, clock switch code and testbench, implementation schematic)

Lukáš Horák (responsible for top level code)

Petr Horáček (responsible for video editing)

## Theoretical description and explanation
We developed and implemented a sound synthesizer using a relay on the Nexys A7 FPGA board. Instead of generating audio signals directly, our system utilized a relay connected to a Pmod connector to produce audible sounds by managing the activation and deactivation of the relay switch. Users replay basic melodies at various speeds. We integrated switches as controls for play, stop, speed and song navigation, while LEDs and a seven segment display provide visualization of the melody.

## Hardware description of demo application
Just five switches are used as user inputs. The outputs are a seven segment display, LEDs to indicate the switch states, RGB LEDs to indicate playback state and a relay controlling Pmod output.

Implementation schematic:

![image](https://github.com/Foyceek/project_hhhh/assets/165892683/6ae91ec7-e27f-44e8-b6d1-f733886b80a0)

## Software description
Application state diagram:

![Untitled](https://github.com/Foyceek/project_hhhh/assets/148572907/30128e04-d3c7-4f2c-b128-db7e6d575ca0)

```diff
- Insert links to testbenches
```

## Component(s) simulation
We developed two components from scratch, clock_switch and sound_synthesizer. Other modules were taken from the  [vhdl course repository](https://github.com/tomas-fryza/vhdl-course), and slightly altered for our input and output needs.

The clock_switch module takes user input in a form of a binary number and based on that, it selects which clock controls the simple_counter module. By this we can control the playback speed.



![434779698_969306288035772_3204128901861703787_n](https://github.com/Foyceek/project_hhhh/assets/165892683/44d88aff-5ca4-4d21-9d73-08be821a9e6b)




The sound_sunthesizer module takes user input in the same way as the clock_switch module, in a form of a binary number, and based on that, it select a prerecorded melody to be played by the relay.


![image](https://github.com/Foyceek/project_hhhh/assets/165892683/21969a4b-9960-43dc-b5b7-011115b6861a)



## Instructions
1. Use switches 1 and 2 to select one of four melodies. The melody number shows on the display.
2. Use switches 12 and 13 to choose the playback speed.
3. A green LED shows when a melody is playing. A blue LED blinks when the melody restarts.
4. To stop playback, use switch 15. This changes the green LED to red.

The relay input should be connected to the first pin of the JC Pmod.

![image](https://github.com/Foyceek/project_hhhh/assets/148572907/5345251a-be2b-40f1-b19c-ea937391ffa5)

![deboard](https://github.com/Foyceek/project_hhhh/assets/148572907/07dc4bf2-ded1-4dc9-9101-3f6f8d5f5581)

Demo video:

https://github.com/Foyceek/project_hhhh/assets/148572907/f7e40438-f5c9-4a8a-8ade-0ed7a6af3786

## References
Nexys A7 Reference Manual: [nexys-a7_rm.pdf](https://github.com/Foyceek/project_hhhh/files/15051833/nexys-a7_rm.pdf)

