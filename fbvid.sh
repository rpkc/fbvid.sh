#!/bin/bash 
#========================================================== Functons =============================================================#
  
_FileNameEx() # File Name Extractor
{
EXT=""
XML=`echo $PAGE|grep "<title id="` # search for that line which contains '<title id="' string 
TEMP=`echo -e ${XML/'<title id="pageTitle"'/'\n<title id="pageTitle"'}|grep '<title id="pageTitle">'` # make that line as newline
echo $TEMP|grep -i "MP4">tmp.txt #search if that line contains "MP4" or not
rm tmp.txt

if [ $? -eq 0 ] #if Yes then
then
EXT=".mp4" #add mp4 as extension
fi #end of if

#filtering to get the value of tag <title>
TEMP=`echo -e ${TEMP/'</title>'/'\n</title>'}|grep '<title id="pageTitle"'`
TEMP=`echo -e ${TEMP/'<title id="pageTitle">'/''}`
TEMP=`echo -e ${TEMP/'</title>'/''}`
if [ "$TEMP" = "" ] #if it cannot find the name make a default name
then
TEMP="FaceBook Video"
fi
echo $TEMP$EXT #echo the final name with extention 
}


_LinkEx(){ # Video Link Extarctor
TEMP=`echo $PAGE|grep "sd_src:"` # search for that line which contains 'sd_src'
# filtering to find the value of 'sd_src'
# the value of sd_src is the real link of the video 

# ========================filtering=============================#
TEMP=`echo -e ${TEMP/sd_src:/'\nsd_src:'}|grep "sd_src:"|cut -d',' -f 1`
TEMP=`echo -e ${TEMP/sd_src:/''}`
TEMP=`echo -e ${TEMP/'"'/''}`
TEMP=`echo -e ${TEMP/'"'/''}`
echo $TEMP # after extract the link echo it 
}

#=============================================== Main Program =======================================================#

#checking for valid facebook video url
echo $1|grep  "https:\/\/www\.facebook\.com\/[a-zA-Z0-9].*\/videos\/[0-9].*">temp
if [ $? -ne 0 ]
then
echo "Not a valid Facebook Video URL"
rm temp
exit
fi
rm temp


echo "[Downloading Page...]"
# get page Details using CURL
# you may need to install to use CURL
PAGE=`curl "$1"`
if [ $? -ne 0 ] #if curl cannot run then exit the program
then
echo "[Can't Open The Page]"
exit
fi

echo -n "[Extracting File Name...]"
FILENAME=$(_FileNameEx)
echo "[Extracting Link...]"
LINK=$(_LinkEx)
echo "[Start Downloading...]"

#downloading with wget Command
wget "$LINK" -cO"$FILENAME" 

