# TreeFunction
Main task.

Need to display all directories and files in the given path. At the end of the output there should be printed the number of directories and files on a new line (see the sample output or the output of the tree function without parameters).

Input.
The only script argument is the path (the path may differ from the example presented)

bash script.bash .

Output.

Standart output structured like given:

.
├── abc
├── aberdeen
│   ├── aa
│   │   ├── aa
│   │   │   └── aaa.txt
│   │   ├── aaa
│   │   │   ├── ability
│   │   │   │   ├── abc
│   │   │   │   ├── abilities
│   │   │   │   │   ├── aa.txt
│   │   │   │   │   └── ab
│   │   │   │   │       └── abandoned.pdf
│   │   │   │   ├── ability
│   │   │   │   │   └── aberdeen
│   │   │   │   └── ab.txt
│   │   │   └── ab.pdf
│   │   └── aaa.doc
│   ├── aa.jpg
│   └── ab
│       └── aa.jpeg
└── abilities
    └── aaa.txt

10 directories, 12 files