
#ifndef MESSAGEENCRYPTIONKEY_H_
#define MESSAGEENCRYPTIONKEY_H_

class MessageEncryptionKey
{
public:
    uint16_t keyId;
    uint8_t sessionType;
    char *dataEncKey;
    guint dataEncKeyLen;
    MessageEncryptionKey *nextKey;

    bool IsSameKey(const MessageEncryptionKey& otherKey) const;
};

enum {
    kDataEncKeyLength_AES128CCM = 16
};

class MessageEncryptionKeyTable
{
public:
    static void Init();
    static const MessageEncryptionKey *FindKeysById(uint16_t keyId);
    static const MessageEncryptionKey *AddKey(const MessageEncryptionKey& keyData);

private:
    MessageEncryptionKeyTable(); // Not defined
    ~MessageEncryptionKeyTable(); // Not defined

    static wmem_tree_t *sKeys;
};



#endif /* MESSAGEENCRYPTIONKEY_H_ */
