# Random Readme
Code for selecting samples of readmes given a corpus of document readmes. This script aims to facilitate one part of statisticall tasks
such us the choosing of samples.

This script can be used as complement of the artifact for content analysis of GitHub projects:
># [The Corpus Builder](https://github.com/nitanilla/corpus-retrieval#fork-destination-box)
Tool useful for collection of readmes given a query, the same query that you may do in GitHub. This work boost the discovering of information and the reuse. 
All depends of the point of view.  
The corpus obtained can be useful to begin to explore data with text-mining techniques. 
You can test the [live version](https://corpus-retrieval.herokuapp.com/)  

To use the Random Readme, choose one of the following options to get started:
* [Download the zip](https://github.com/nitanilla/Random-Readme/archive/master.zip)
* [Fork this repository on GitHub](https://github.com/nitanilla/Random-Readme#fork-destination-box)

## Instructions:
This scripts receive two arguments:
  @folder-path: The path to an folder that must have files with the format: "0000.-.*"
  @number-of-files: The number of files to be randomically selected

 Usage: ruby random.rb @folder-path @number-of-files
 Example: ruby random.rb "1er grupo/menor a 1/" 209

 It will create two files:
   <folder-path>/aaa-random.txt
       contains all the numbers of the files randomized

   <folder-path>/aaa-random-contents.txt
       contains the contents of the files randomized

## Bugs and Issues
Have a bug or an issue with this? [Open a new issue](https://github.com/nitanilla/Random-Readme/issues) here on GitHub 

## Creators
[@nitanilla](https://github.com/nitanilla)
[@hugolnx](https://github.com/hugolnx)

## Copyright and License

Copyleft © 2015 Puc-Rio, LLC.  
Code released under the [GPL 2.0](https://github.com/nitanilla/corpus-retrieval/blob/master/LICENSE) license.
