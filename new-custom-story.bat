@echo off

set /p humanName="Custom Story Name (human readable): "
set /p folderName="Custom Story Folder name (without spaces): "

mkdir %folderName%
cd %folderName%

echo ^<Main >> custom_story_settings.cfg
echo    ImgFile = "%folderName%_thumbnail.png" >> custom_story_settings.cfg
echo    Name = "%humanName%" >> custom_story_settings.cfg
echo    Author = "Your Name Here" >> custom_story_settings.cfg
echo    MapsFolder = "maps/" >> custom_story_settings.cfg
echo    StartMap = "00_first.map" >> custom_story_settings.cfg
echo    StartPos = "PlayerStartArea_1" >> custom_story_settings.cfg
echo /^> >> custom_story_settings.cfg

echo ^<LANGUAGE^> >> extra_english.lang
echo. >> extra_english.lang
echo    ^<RESOURCES /^> >> extra_english.lang
echo. >> extra_english.lang
echo    ^<CATEGORY Name="CustomStoryMain"^> >> extra_english.lang
echo        ^<Entry Name="Description"^>Your description^</Entry^> >> extra_english.lang
echo    ^</CATEGORY^> >> extra_english.lang
echo. >> extra_english.lang
echo ^<LANGUAGE^> >> extra_english.lang

mkdir maps

cd ..
