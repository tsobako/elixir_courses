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
        [*] --> Toilet
        Toilet --> WearingClothes : ToiletProceduresFinished
        WearingClothes --> WalkingWithDog : WearingFinished
        WalkingWithDog --> DogFeeding : GetBackToHome
        DogFeeding --> Breakfast : BreakfastPrepared
        Breakfast --> Shower : BreakfastFinished
        Shower --> WearingClothes : ShowerFinished
        WearingClothes --> WalkingToCar : WearingFinished
        WalkingToCar --> [*]
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
        [*] --> WalkingToHome
        WalkingToHome --> ChangingClothes : HomeReached
        ChangingClothes --> Dining : ClothesChanged
        Dining --> WalkingWithDog : DiningFinished
        WalkingWithDog --> DogFeeding : GetBackToHome
        DogFeeding --> Shower : DogFed
        Shower --> WearingClothes : ShowerFinished
        WearingClothes --> PrepareToSleep : UnwearingFinished
        PrepareToSleep --> [*]
    }
```