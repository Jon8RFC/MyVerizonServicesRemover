# MyVerizonServices Remover
This Magisk module systemlessly disables and removes MyVerizonServices.apk and Verizon's LLKAgent.apk

Disabling the apk via su/root doesn't persist after reboot, and may get enabled spontaneously anyway.  
This module should account for all of that.  

The below method also applies to LLKAgent:
 1. **Disables** com.verizon.mips.services
 2. **Kills** com.verizon.mips.services
 3. **Replaces** MyVerizonServices.apk parent directory */system_ext/priv-app/MyVerizonServices* with chmod 000 empty directory
 4. **Kills** com.verizon.mips.services once more for proactive redundancy
