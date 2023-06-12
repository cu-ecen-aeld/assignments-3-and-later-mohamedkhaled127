#include <stdio.h>
#include<syslog.h>
int main(int argc, char* argv[]){

   openlog ("writer file logs", 0, LOG_USER);
   if(argc!=3){
    syslog (LOG_ERR, "invalid number of arguments is supplied ,please provide the file directory as first argument followed by the string to be writted");
    return 1;
   }
  //syslog (LOG_INFO, "shared library has been invoked");
  FILE *file;
  file=fopen(argv[1],"w");
  if(file == NULL)
   {
      printf("Error!");   
      syslog (LOG_ERR, "file doesn't exist");
      return 1;
                  
   }
   fprintf(file,"%s",argv[2]);
   syslog (LOG_DEBUG,"Writing %s to %s",argv[2],argv[1]);
   fclose(file);
  closelog ();
    

    return 0;
}