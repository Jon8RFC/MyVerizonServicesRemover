# MyVerizonServices Remover
This Magisk module systemlessly disables and removes MyVerizonServices.apk and Verizon's LLKAgent.apk.  

I suggest not using this module because it works as it should, and MyVerizonServices is necessary.

Disabling the apk via su/root doesn't persist after reboot, and may get enabled spontaneously anyway.  
This module should account for all of that.  

The below method also applies to LLKAgent:
 1. **Disables** com.verizon.mips.services
 2. **Kills** com.verizon.mips.services
 3. **Replaces** MyVerizonServices.apk parent directory */system_ext/priv-app/MyVerizonServices* with chmod 000 empty directory
 4. **Kills** com.verizon.mips.services once more for proactive redundancy

## -PLEASE NOTE-
Many years ago, I perpetuated the idea that MyVerizonServices was required for wifi calling, among other things, on Verizon Wireless and their MVNOs.  
I felt bad for being wrong, as countless others have since stated that they've disabled it without any issue, and I had as well.

_However_, I was correct...

I wiped my phone and installed magisk modules before continuing additional setup.  
Wifi calling was **NOT** possible to initially enable unless I disabled my module.  
After using my phone for about a week, "Hold for Me", "Direct My Call", and "Call Screen" broke and couldn't be re-enabled without disabling the module and clearing data for the phone app.  
Something pertaining to a more feature-filled Emergency/911 Calling and/or SOS functionality was **NOT** possible to enable, but I was tired and have since forgotten details.  

Once wifi calling is initially enabled, my module can safely be enabled.

This is because my module truly disables the apk; other methods of "disabling" don't actually do so, be it via application or command.  
MyVerizonServices on Android 14 (and possibly earlier) will both reinstall and re-enable itself, which is why I created this robust approach.  

  
As of 2024-02-27, I plan to soon do additional testing on a borrowed Pixel 3, using different OEM versions/API levels.  
As of 2024-03-04, I think this module is, unfortunately, good at what it does and shouldn't be used; MyVerizonServices is obviously necessary.
