# copydata
CMD file to copy data from source to destination
Uses RoboCopy to copy newer data (/xo) from a source (variable: _src) to a destination (variable: _dest).
A log file is generated (/log+) with the results and the name of it is the current date and time of when the CopyData.cmd file was run.
Log data is also outputted to the screen (/tee).
Destination directories that no longer exist on the source are removed from the destination (/mir (which implies /e /purge)).
You can search the log file for ERROR to find any issues that may have happened during the copy process.
