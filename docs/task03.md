## Finite state automata for my day

```mermaid
stateDiagram
    [*] --> Sleep
    Sleep --> MorningRoutine
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


        Driving --> [*]
     }
    state EveningRoutine {
        [*] --> Dining

        PrepareToSleep --> [*]
    }
```