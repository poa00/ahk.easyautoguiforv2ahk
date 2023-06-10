# A modified version of 'Easy AutoGUI' for ahk-v2. 
A GUI-Designer for basic and advanced creation.  


# Credits:
AutoGUIv2 is a modified version of Easy AutoGUI designed for use with AHKv2. The project is built upon the years of hard work by various individuals, and the code has been updated to use the latest version of AutoHotkey.
- Easy AutoGUI was created by Alguimist, the founder of the Adventure IDE here https://sourceforge.net/projects/autogui/
- AHKv2converter was developed by https://github.com/mmikeww and https://github.com/dmtr99 among others.
- Their work served as the foundation for this project, I did very little work, just weaving the two solutions together. All the work was done by the creators just mentioned.
  
# How it works 
- Runs Easy AutoGUI on ahkv1 (doesn't need to be installed, relies on built in exe's)
- Conversion happens in realtime in the IDE, and when selecting SaveAs/Save. Cloning windows with over 1,000 lines happens in under 1 second. 
- Custom contingencies provide minimal output errors, modifying ahkv2converter output for this specific use case.
- function-call converts to v2 with ahkv2converter
- autogui has custom code posted in the github
- works with embedded ahk exe's from ahkconverter, you do not need ahkv1 or v2, hypothetically this should run portably

# Contribution
If you find a problem or an idea, fork or create issue. Thanks!
#
Example, cloning notepad++ to ahkv2. 

![Produce_13](https://user-images.githubusercontent.com/98753696/235309043-9dcac7d8-d0d5-4311-8a25-93cff5e63533.GIF)



- Instructions: Launch from Launch_AutoGUI
- I have accounted for changes such as naming of "menubar" but there will be unforseen errors. Please notify me of those changes that need to be made in the output v2 conversion. 
 
