- Open Closed IRL means can I add only new code to implement a new feature. (If the answer is no then refactor until it is possible)

- Delete tests that only test the current implementation. These tests inhibit change. 

- "Let red be your guide", take bigger steps and continue with that as long as tests don't go red

- refactoring often makes code "worse" before it gets better.

- Refactoring often helps by naming concepts. This can make code quantifiably worse.

- Writing consistent code helps see commonalities in behavior. 

- Consciousness is your PR agent

- trust your feelings ("gut")

- Extract class, don't refactor class until behavior completely moved over

- Names with the "type" in them defeat polymorphism. For instance a factory method should not describe what it returns.

- The style of code that lets you win in the market often causes you to lose that market

- Liskov violations are more about unexpected Type changes than "train wrecks"

- Remind yourself to talk to team about factory communications tradeoffs

- Most wanted list
  - Helpers
  - Callbacks
  - RABL
  
- Move one small change (line) at a time until you establish a pattern of changes. Make bigger moves after that, letting "red be your guide". If tests fail, undo! Take smaller steps. Don't think, just do, UNTIL a spec goes red. Then step back and think.

Things we should do now/next:

- Dev lunch each code smell

- Practice FLOCKING, etc. in Javascript

- Discuss the way forward

- Agree on a plan for moving code out of controllers into POROs

- Agree on a plan for fast vs. slow tests

- Agree on a style of doubling that verifies them against the production object

- Revisit our values https://github.com/ATHN/athn_team/blob/master/README.md
