### Project: Relay-Controlled Sound Synthesizer
![2-channel-relay_description](https://github.com/Foyceek/project_hhhh/assets/148572907/cfc454e1-d45e-40e1-861a-2a72c0d3ce87)
## Team members
František Hecl (responsible for sound synthetizer module code and testbench)

Ondřej Hrozek (responsible for general project idea and organization, clock switch code, schematic)

Lukáš Horák (responsible for top level code)

Petr Horáček (responsible for video editing)

## Theoretical description and explanation
Enter a description of the problem and how to solve it.

## Hardware description of demo application
Insert descriptive text and schematic(s) of your implementation.
![image](https://github.com/Foyceek/project_hhhh/assets/165892683/6ae91ec7-e27f-44e8-b6d1-f733886b80a0)


## Software description
Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in src and sim folders.

## Component(s) simulation
Write descriptive text and put simulation screenshots of your components.

## Instructions
Write an instruction manual for your application, including photos and a link to a short app video.

This application supports the replaying of four prerecorded melodies. Choosing these melodies is done by switching switches number 1 and 2 (all the way to the right). The melody order can be seen at the seven segment display starting at 0 and ending at 3.
It is possible to choose from four preset playback speeds by switching switches number 12 and 13, similar to the choosing of melodies.
A melody being played is signalized by a green LED and every time it starts over, a blue LED blinks. You can stop the playback by switching on the switch number 15 (all the way to the left), this also causes the green LED to be replaced by a red one.

1. Use switches 1 and 2 to select one of four melodies. The melody number shows on the display.
2. Use switches 12 and 13 to choose the playback speed.
3. A green LED shows when a melody is playing. A blue LED blinks when the melody restarts.
4. To stop playback, use switch 15. This changes the green LED to red.

## References
Nexys A7 Reference Manual: [nexys-a7_rm.pdf](https://github.com/Foyceek/project_hhhh/files/15051833/nexys-a7_rm.pdf)

