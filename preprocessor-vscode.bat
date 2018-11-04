@echo off
mkdir .vscode
cd .vscode

echo { >> c_cpp_properties.json
echo     "configurations": [ >> c_cpp_properties.json
echo         { >> c_cpp_properties.json
echo             "name": "Win32", >> c_cpp_properties.json
echo             "includePath": [ >> c_cpp_properties.json
echo                 "${workspaceFolder}/**", >> c_cpp_properties.json
echo                 "${workspaceFolder}/maps/source/includes" >> c_cpp_properties.json
echo             ], >> c_cpp_properties.json
echo             "defines": [ >> c_cpp_properties.json
echo                 "_DEBUG", >> c_cpp_properties.json
echo                 "UNICODE", >> c_cpp_properties.json
echo                 "_UNICODE" >> c_cpp_properties.json
echo             ], >> c_cpp_properties.json
echo             "intelliSenseMode": "msvc-x64" >> c_cpp_properties.json
echo         } >> c_cpp_properties.json
echo     ], >> c_cpp_properties.json
echo     "version": 4 >> c_cpp_properties.json
echo } >> c_cpp_properties.json
echo. >> c_cpp_properties.json

echo { >> settings.json
echo     "git.ignoreLimitWarning": true, >> settings.json
echo     "triggerTaskOnSave.tasks": { >> settings.json
echo         "Preprocess-Silent": [ >> settings.json
echo             "**/*.shps", >> settings.json
echo             "**/*.ihps" >> settings.json
echo         ] >> settings.json
echo     } >> settings.json
echo } >> settings.json
echo. >> settings.json

echo { >> tasks.json
echo     "version": "2.0.0", >> tasks.json
echo     "tasks": [ >> tasks.json
echo         { >> tasks.json
echo             "label": "Preprocess", >> tasks.json
echo             "type": "shell", >> tasks.json
echo             "command": "C:\\dev\\tools\\AmnesiaPreprocessor\\AmnesiaPreprocessor.exe '-cs:${workspaceFolder}'", >> tasks.json
echo             "group": { >> tasks.json
echo                 "kind": "build", >> tasks.json
echo                 "isDefault": true >> tasks.json
echo             } >> tasks.json
echo         }, >> tasks.json
echo         { >> tasks.json
echo             "label": "Preprocess-Silent", >> tasks.json
echo             "type": "shell", >> tasks.json
echo             "command": "C:\\dev\\tools\\AmnesiaPreprocessor\\AmnesiaPreprocessor.exe '-cs:${workspaceFolder}'", >> tasks.json
echo             "presentation": { >> tasks.json
echo                 "reveal": "never", >> tasks.json
echo             } >> tasks.json
echo         } >> tasks.json
echo     ] >> tasks.json
echo } >> tasks.json
echo. >> tasks.json

cd ..

@echo on