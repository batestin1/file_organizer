
<h1 align="center">

<img src="https://img.shields.io/static/v1?label=ORGANIZER%20POR&message=Bates&color=7159c1&style=flat-square&logo=ghost"/>

<h3> <p align="center">FILE ORGANIZER</p> </h3>

<h3> <p align="center"> ================= </p> </h3>

>> <h3> Resume </h3>
-----
<p> The program is a shell script that monitors a user-specified directory and organizes files by extension and modification date. When a file is added, moved, or deleted, the script identifies the file's extension and modification date and moves it to a directory with the format YYYYMMDD/extension/filename. In addition, the script includes a --help command to display a help tab and a log file to record the status of the program. To prevent the terminal from getting stuck while the script is running, the user can run it in the background using the & character at the end of the command. 
</p>

>> <h3> How install </h3>

1. Make sure the ```inotify-tools``` package is installed on your system. If not, install it using your system's package manager.

2. Clone the GitHub repository on your system.

3. Access the project directory with the ```cd file_organizer```.

4. Give execute permission to the file_organizer.sh file using the command ```chmod +x script/file_organizer.sh```.

5. Open a terminal or command prompt.

6. Run the file_organizer.sh script with the command ```./script/file_organizer.sh <directory to be monitored>```.

7. The program will monitor the specified directory and move the files to folders organized by date and extension. Information about program actions will be stored in a <b> log.txt </b> file in the root of the project.


>> <h3> How Works </h3>

```
----------- HELP GUIDE ----------------------------------------------------------------------------

Usage: ./file_organizer.sh [OPTIONS] <directory>

Organizes files in a directory by extension and modification date.

Options:
  -h, --help    Show this help message and exit.

--------------------------------------------------------------------------------------------------
```
    