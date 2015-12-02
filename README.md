# Random Readme
Code for selecting samples of readmes given a [corpus of readme documents](http://corpus-retrieval.herokuapp.com). This script aims to facilitate one part of statisticall tasks such us the choosing of samples.

This script can be used as complement of this artifact to extract information from GitHub
># [The Corpus Builder](https://github.com/nitanilla/corpus-retrieval#fork-destination-box)

To use the Random Readme, choose one of the following options to get started:
* [Download the zip](https://github.com/nitanilla/Random-Readme/archive/master.zip)
* [Fork this repository on GitHub](https://github.com/nitanilla/Random-Readme#fork-destination-box)

##Pre-requisites:
Ubuntu OS:
execute in the terminal: 
```R
ruby random.rb /home/mycorpus 121
```

## Instructions:
This scripts receive two arguments:
  @folder-path: The path to an folder that must have files with the format: "0000.-.*"  
  @number-of-files: The number of files to be randomically selected

 Usage: ruby random.rb @folder-path @number-of-files  
 Example: ruby random.rb /home/mycorpus 209  

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
