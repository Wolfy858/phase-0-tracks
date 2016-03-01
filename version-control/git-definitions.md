# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

  Version control software is used to track changes to files over time, as well as help manage and merge multiple users' disparate contributions to a project. It can help by providing frequent snapshots that act as 'save points' of project's source code as functionality is added, freeing developers to experiment freely when adding new code without fear of breaking something. It also is used to help facilitate the merging of different users' contributions to different parts of a project.

* What is a branch and why would you use one?

  A git branch is a copy of the code-base that is created for the purpose of adding / modifying features of a code-base without making
  permanent changes. All git repositories start with a master branch, that typically isn't used to make changes or commits. Instead, branches are split off from the master branch, designated as safe environments for features to be added and implemented. When they are complete and ready to be integrated with the master branch, pull requests can be made to merge them, and upon code review, they are rejoined, adding the features to the master branch.

* What is a commit? What makes a good commit message?

  A commit represents a saved picture of what the code-base of a project looks like at a given point in time. Commits are used as save-points, frequently added to a project as new code is added to a project. If code is added that ends up breaking application, it is easy to revert to a previous commit where the code was functional. A good commit message will be a short, descriptive statement of what functionality was added or changed since the previous commit.

* What is a merge conflict?

  Merge conflicts occur when two branches are merged, and there are different versions in each branch of one or more files. Specifically, if two branches both modified the same line of code in the same file with different content, a conflict is inevitable. Merge conflicts must be resolved by specifying which branch's version of the conflicting line(s) is correct.
