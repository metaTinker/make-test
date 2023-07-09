
## Sample Makefile 📝  
A sample Makefile which works with smaller C projects which have the following project structure.

  -> Project
    -> src
      -> src1.c
      -> src2.c
    -> include
      -> src2.h
    -> build (contains object files)
    -> target (contains executable)
    Makefile
    README.md
  
  ## Get Started 🚀  
  To get started (all commands run from the project root directory):
    1. Clone the repository.
    2. Run ```make``` or ```make all``` to build the project.
    3. Run ```make clean``` to clean the project.
    4. Run ```make run``` to run the executable. 
      
  ## Makefile features ✨  
  1. This Makefile is created to help build c projects without much modification, provided the project structure used is the same.
  2. It makes use of automatic variables like ```$@, $^``` and ```$<``` which refer to Left hand side of the rule, right hand side and the first item from the dependency list.
  3. The targets are as follows: all, clean and run. the target ```create``` is a prebuild target and should happen before ```make/make all```.
  4. Variables have been used to remove tight dependecy on project specific files and reuse the Makefile.

## References
1. https://www.gnu.org/savannah-checkouts/gnu/make/manual/html_node/Text-Functions.html.
2. https://cs.colby.edu/maxwell/courses/tutorials/maketutor/
3. https://www.gnu.org/software/make/manual/html_node/index.html

## Contributing  

Contributions are always welcome! Create an issue, raise a PR followed by a merge request.

PRs will be reviewed and merged.

## Future Work
Will be adding Unity/CPPUnitTest framework for unit tests.

## License  

[MIT](https://choosealicense.com/licenses/mit/)
