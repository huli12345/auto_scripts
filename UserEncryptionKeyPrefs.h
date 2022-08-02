
#ifndef USERENCRYPTIONKEYPREFS_H_
#define USERENCRYPTIONKEYPREFS_H_

#include "MessageEncryptionKey.h"

class UserEncryptionKeyPrefs
{
public:
    static void Init(module_t *prefs);
    static guint GetKeyCount() { return sKeyCount; }
    static const MessageEncryptionKey *GetKey(size_t index) { return (index < sKeyCount) ? &sKeyList[index] : NULL; }

private:
    static uat_t *sUAT;
    static MessageEncryptionKey *sKeyList;
    static guint sKeyCount;
};

#endif /* USERENCRYPTIONKEYPREFS_H_ */
