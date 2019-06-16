# How to create a Lightsaber like Weapon in Unity 

### Foreword

This is an addition to the [Lightsabers Tutorial (HDRP)](https://github.com/Roland09/Lightsabers-Tutorial). This tutorial covers the Standard Render Pipeline.

Like the HDRP tutorial this is an educational tutorial, this free asset is for training purposes only.


### Preview

Here's a preview video of what this is about. Click on the picture to open the accompanying youtube video.

[![How to create Lightsaber like Weapons in Unity](https://img.youtube.com/vi/oUMSiZU_Lyo/0.jpg)](https://www.youtube.com/watch?v=oUMSiZU_Lyo)


### Quick Setup

Here are the quick setup steps:

* create a new project "Weapon Tutorial" using "3D" Template in Unity 2019.1.5f1 (or use 2018+)

* set Color Space to "Linear" in the project settings

* add the Post Processing package (current version is 2.1.7)

* open Scenes > SampleScene

* hit play

* press space to toggle the weapon on and off

### Additional Info

* the shader graph is the one I posted in the [Amplify Shader Editor thread](https://forum.unity.com/threads/best-tool-asset-store-award-amplify-shader-editor-node-based-shader-creation-tool.430959/page-32#post-3147421)

  (Credits to "K Re" who did the glow effect graph tutorial for the unreal engine)
 
* you might want to add audio for the weapon on / off / loop / swing sound in the Weapon script settings; unfortunately I'm not allowed to provide them

* the glow effect very much depends on your shader settings and the bloom post processing settings, adjust to your own preferences

### How it works

Please see the [HDRP version](https://github.com/Roland09/Lightsabers-Tutorial) about how it works. The setup and the scripts are the same.

A difference is in the settings though. The HDRP version works e. g. with lumen, that's not available in the Standard version. We need to adjust the light settings accordingly. So the Blade Color Intensity and the Light Intensity settings of the Weapon script got a value of 1.





### Addendum

#1) Please note that Lightsaber is a registered trademark owned by LUCASFILM ENTERTAINMENT COMPANY LTD. The word is being used as reference because it's common knowledge.


