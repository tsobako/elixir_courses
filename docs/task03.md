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

    }
    state Work {
        [*] -> Coding
        Coding -> Review
        Coding -> Meeting
        Meeting -> Lunch
        Coding -> [*]
    }
    state EveningRoutine {

    }
```