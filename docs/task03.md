## Finite state automata for my day

```mermaid
stateDiagram
    [*] --> Sleep
    Sleep --> MorningRoutine : AlarmClock
    MorningRoutine --> Work
    Work --> EveningRoutine
    EveningRoutine --> Sleep
    Sleep --> [*]

    state MorningRoutine {
        [*] --> Shower

        WearClothes --> [*]
    }
    state Work {
        [*] --> Driving
        Driving --> WalkingToOffice : FreeCarPlaceReached

        WalkingToCar --> Driving : CarReached
        Driving --> [*]
     }
    state EveningRoutine {
        [*] --> Dining

        PrepareToSleep --> [*]
    }
```