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
        WalkingToOffice --> Coding : WorkplaceReached
        Coding --> Meeting : MeetingStarted
        Meeting --> Coding : MeetingEnded
        Coding --> Lunch : DecidedToEat
        Lunch --> Coding : FinishedEating
        Coding --> Review : AskedForReview
        Review --> Coding : ReviewFinished
        Coding --> FixingIssue : IssueSpawnedOnProd
        FixingIssue --> Coding : IssueFixed
        Coding --> WalkingToCar : WorkdayEnded
        WalkingToCar --> Driving : CarReached
        Driving --> [*]
     }
    state EveningRoutine {
        [*] --> Dining

        PrepareToSleep --> [*]
    }
```