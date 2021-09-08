#!/bin/bash

echo What is the human readable name of your custom story?

read csHumanReadable

echo What is the prefix for your custom story? \(eg. SOTR\)

read csPrefix

mkdir $csPrefix
cd $csPrefix

touch custom_story_settings.cfg
touch extra_english.lang
mkdir maps

cat >> ./custom_story_settings.cfg << EOF
<Main
    ImgFile = "($csPrefix)_thumbnail.png"
    Name = "$csHumanReadable"
    Author = "Your Name Here"
    MapsFolder = "maps/"
    StartMap = "00_first.map"
    StartPos = "PlayerStartArea_1"
/>
EOF

cat >> ./extra_english.lang << EOF
<LANGUAGE>
    <RESOURCES />
    <CATEGORY Name="CustomStoryMain">
        <Entry Name="Description">Your description</Entry>
    </CATEGORY>
</LANGUAGE>
EOF

echo Custom story: $csHumanReadable
echo Prefix: $csPrefix

