#!/bin/sh
# ---------------------------------
# Script to clean Tomcat temp files
# ---------------------------------
echo "Cleaning temporary Alfresco files from Tomcat..."
rm -rf work/Catalina/localhost/share

